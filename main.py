from PyQt5.QtCore import QUrl, QObject, pyqtSlot
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQuick import QQuickView
from PyQt5.QtQuick import QQuickItem
from PyQt5.QtQml import QQmlApplicationEngine

from threading import Thread
import pyshark
import struct
import time

import requests


def setProperty_wrap(qroot, prop, value):
    qroot.setProperty(prop, value)
    '''
    try:
        requests.post('http://10.193.7.172:8080/seawater/wind/one', {prop: value})
    except Exception as e:
        pass
    '''
    time.sleep(0.001)

def set_distinct_property(data, prop, qroot):
    i = 0
    for it in prop:
        i += 1
        if i == data:
            setProperty_wrap(qroot, it, '是')
        else:
            setProperty_wrap(qroot, it, '否')
    
def split_8b_property(data, prop_07, qroot):
    mask = 1
    for i in range(8):
        if data & (mask << i) != 0:
            setProperty_wrap(qroot, prop_07[i], '是')
        else:
            setProperty_wrap(qroot, prop_07[i], '否')

def packet_windturbine_1(packet, qroot):
    packet_data_str = []
    if packet['MODBUS'].func_code == '3':
        pass
    else:
        return
    if packet['MODBUS'].byte_cnt == '24':
        for field in packet['MODBUS']._get_all_fields_with_alternates():
            if isinstance(field, pyshark.packet.layer.LayerFieldsContainer):
                if field.main_field.get_default_value()[0] == 'R':
                    #print(field.main_field.get_default_value(), ' ', field.raw_value)
                    packet_data_str.append(field.raw_value)
            if isinstance(field, pyshark.packet.layer.LayerField):
                if field.get_default_value()[0] == 'R':
                    #print(field.get_default_value(), ' ', field.raw_value)
                    packet_data_str.append(field.raw_value)
        #print(packet_data_str)
        wtb_1_control_method = struct.unpack('>H', bytes.fromhex(packet_data_str[0]))[0]
        wtb_1_running_mode = struct.unpack('>H', bytes.fromhex(packet_data_str[1]))[0]
        wtb_1_running_state = struct.unpack('>H', bytes.fromhex(packet_data_str[2]))[0]
        wtb_1_message_warn0 = struct.unpack('>H', bytes.fromhex(packet_data_str[3]))[0]
        wtb_1_wind_velo1s = struct.unpack('>h', bytes.fromhex(packet_data_str[4]))[0]/100.0
        wtb_1_wind_velo5min = struct.unpack('>h', bytes.fromhex(packet_data_str[5]))[0]/100.0
        wtb_1_wind_dir10min = struct.unpack('>h', bytes.fromhex(packet_data_str[6]))[0]/10.0
        wtb_1_gen_rot = struct.unpack('>h', bytes.fromhex(packet_data_str[7]))[0]/100.0
        wtb_1_vane_ang = struct.unpack('>h', bytes.fromhex(packet_data_str[8]))[0]/10.0
        wtb_1_message_warn1 = struct.unpack('>H', bytes.fromhex(packet_data_str[9]))[0]
        wtb_1_res_0 = packet_data_str[10]
        wtb_1_res_1 = packet_data_str[11]


        setProperty_wrap(qroot, 'windturb1_40005', str(wtb_1_wind_velo1s))
        setProperty_wrap(qroot, 'windturb1_40006', str(wtb_1_wind_velo5min))
        setProperty_wrap(qroot, 'windturb1_40007', str(wtb_1_wind_dir10min))
        setProperty_wrap(qroot, 'windturb1_40008', str(wtb_1_gen_rot))
        setProperty_wrap(qroot, 'windturb1_40009', str(wtb_1_vane_ang))
        split_8b_property(wtb_1_message_warn1, ['windturb1_40010_0',\
                                                'windturb1_40010_1',\
                                                'windturb1_40010_2',\
                                                'windturb1_40010_3',\
                                                'windturb1_40010_4',\
                                                'windturb1_40010_5',\
                                                'windturb1_40010_6',\
                                                'windturb1_40010_7'], qroot)
        set_distinct_property(wtb_1_control_method, ['windturb1_40001_1',\
                                                'windturb1_40001_2'], qroot)
        set_distinct_property(wtb_1_running_mode, ['windturb1_40002_1',\
                                                   'windturb1_40002_2',\
                                                   'windturb1_40002_3',\
                                                'windturb1_40002_4'], qroot)
        set_distinct_property(wtb_1_running_state, ['windturb1_40003_1',\
                                                    'windturb1_40003_2',\
                                                    'windturb1_40003_3',\
                                                    'windturb1_40003_4',\
                                                    'windturb1_40003_5',\
                                                'windturb1_40003_6'], qroot)
        set_distinct_property(wtb_1_message_warn0, ['windturb1_40004_1',\
                                                    'windturb1_40004_2',\
                                                    'windturb1_40004_3'], qroot)

            
        
        
        

def sniff_data(qroot):
    #cap = pyshark.FileCapture('F:\\temp\\4.pcapng')
    cap = pyshark.FileCapture('D:\\4.pcapng')
    for p in cap:
        if 'MODBUS' in p:
            if p['IP'].src == '192.168.0.103':
                packet_windturbine_1(p, qroot)
        else:
            continue

if __name__ == '__main__':
    
    path = 'main.qml'   
    app = QGuiApplication([])
    
    view = QQuickView()
    
    view.engine().quit.connect(app.quit)   
    view.setSource(QUrl(path))             
    view.show()

    context = view.rootContext()
    rootobj = view.rootObject()

    sniff_thread = Thread(target=sniff_data, args=(rootobj,))
    sniff_thread.setDaemon(True)
    sniff_thread.start()

    app.exec_()                         
