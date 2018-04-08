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

import config.ip
import config.server_url
import config.settings

def calc_comb_bit(data, start, end):
    ret = 0
    j = 0
    for i in range(start, end+1):
        ret += (1 if data & (1 << i) > 0 else 0) * (1 << j)
        j += 1
    return ret

def setProperty_wrap(qroot, prop, value):
    qroot.setProperty(prop, value)
    '''
    try:
        requests.post('http://10.193.7.172:8080/seawater/wind/one', {prop: value})
    except Exception as e:
        pass
    '''
    time.sleep(0.01)
    

def set_distinct_property_inc0(data, prop, qroot):
    if data == 0:
        setProperty_wrap(qroot, prop[0], '是')
    else:
        setProperty_wrap(qroot, prop[0], '否')
    set_distinct_property(data, prop[1:], qroot)

def set_distinct_property(data, prop, qroot):
    i = 0
    for it in prop:
        i += 1
        if it == '':
            continue
        if i == data:
            setProperty_wrap(qroot, it, '是')
        else:
            setProperty_wrap(qroot, it, '否')
    
def split_8b_property(data, prop, qroot):
    split_nb_property(data, prop, qroot, 8)

def split_16b_property(data, prop, qroot):
    split_nb_property(data, prop, qroot, 16)
            
def split_nb_property(data, prop, qroot, n):
    mask = 1
    for i in range(n):
        if prop[i] == '':
            continue
        if data & (mask << i) != 0:
            setProperty_wrap(qroot, prop[i], '是')
        else:
            setProperty_wrap(qroot, prop[i], '否')

def packet_windturbine_1(packet, qroot):
    packet_data_str = []
    if packet['MODBUS'].func_code == '3':
        pass
    else:
        return
    # 40001 - 40012, don't know what 40012 means
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
    elif packet['MODBUS'].byte_cnt == '10':
        for field in packet['MODBUS']._get_all_fields_with_alternates():
            if isinstance(field, pyshark.packet.layer.LayerFieldsContainer):
                if field.main_field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
            if isinstance(field, pyshark.packet.layer.LayerField):
                if field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
        wtb_1_powset = struct.unpack('>H', bytes.fromhex(packet_data_str[3]))[0]
        setProperty_wrap(qroot, 'windturb1_40260', str(wtb_1_powset))
    elif packet['MODBUS'].byte_cnt == '22':
        for field in packet['MODBUS']._get_all_fields_with_alternates():
            if isinstance(field, pyshark.packet.layer.LayerFieldsContainer):
                if field.main_field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
            if isinstance(field, pyshark.packet.layer.LayerField):
                if field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
        wtb_1_voltageU = struct.unpack('>h', bytes.fromhex(packet_data_str[0]))[0]/10.0
        wtb_1_voltageV = struct.unpack('>h', bytes.fromhex(packet_data_str[1]))[0]/10.0
        wtb_1_voltageW = struct.unpack('>h', bytes.fromhex(packet_data_str[2]))[0]/10.0
        wtb_1_currentU = struct.unpack('>h', bytes.fromhex(packet_data_str[3]))[0]/100.0
        wtb_1_currentV = struct.unpack('>h', bytes.fromhex(packet_data_str[4]))[0]/100.0
        wtb_1_currentW = struct.unpack('>h', bytes.fromhex(packet_data_str[5]))[0]/100.0
        wtb_1_actpow = struct.unpack('>h', bytes.fromhex(packet_data_str[6]))[0]/10.0
        wtb_1_reactpow = struct.unpack('>h', bytes.fromhex(packet_data_str[7]))[0]/10.0
        wtb_1_powfactor = struct.unpack('>h', bytes.fromhex(packet_data_str[8]))[0]/10000.0
        wtb_1_elec_gened = struct.unpack('>H', bytes.fromhex(packet_data_str[10]))[0]/100.0 \
                           + struct.unpack('>H', bytes.fromhex(packet_data_str[9]))[0]/100.0*(0x10000)
        setProperty_wrap(qroot, 'windturb1_40065', str(wtb_1_voltageU))
        setProperty_wrap(qroot, 'windturb1_40066', str(wtb_1_voltageV))
        setProperty_wrap(qroot, 'windturb1_40067', str(wtb_1_voltageW))
        setProperty_wrap(qroot, 'windturb1_40068', str(wtb_1_currentU))
        setProperty_wrap(qroot, 'windturb1_40069', str(wtb_1_currentV))
        setProperty_wrap(qroot, 'windturb1_40070', str(wtb_1_currentW))
        setProperty_wrap(qroot, 'windturb1_40071', str(wtb_1_actpow))
        setProperty_wrap(qroot, 'windturb1_40072', str(wtb_1_reactpow))
        setProperty_wrap(qroot, 'windturb1_40073', str(wtb_1_powfactor))
        setProperty_wrap(qroot, 'windturb1_40075', str(wtb_1_elec_gened))

def packet_windturbine_2(packet, qroot):
    packet_data_str = []
    if packet['MODBUS'].func_code == '3':
        pass
    else:
        return
    
def packet_PCS(packet, qroot):
    packet_data_str = []
    if packet['MODBUS'].func_code == '3':
        pass
    else:
        return
    if packet['MODBUS'].byte_cnt == '8':
        # NOT USED
        pass
        '''
        for field in packet['MODBUS']._get_all_fields_with_alternates():
            if isinstance(field, pyshark.packet.layer.LayerFieldsContainer):
                if field.main_field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
            if isinstance(field, pyshark.packet.layer.LayerField):
                if field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
        pcs_connstate = struct.unpack('>H', bytes.fromhex(packet_data_str[0]))[0]
        pcs_runmode = struct.unpack('>H', bytes.fromhex(packet_data_str[1]))[0]
        pcs_actpowset = struct.unpack('>h', bytes.fromhex(packet_data_str[2]))[0]
        pcs_reactpowset = struct.unpack('>h', bytes.fromhex(packet_data_str[3]))[0]
        '''
    elif packet['MODBUS'].byte_cnt == '32':
        for field in packet['MODBUS']._get_all_fields_with_alternates():
            if isinstance(field, pyshark.packet.layer.LayerFieldsContainer):
                if field.main_field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
            if isinstance(field, pyshark.packet.layer.LayerField):
                if field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
        pcs_voltageA = struct.unpack('>H', bytes.fromhex(packet_data_str[0]))[0]/10.0
        pcs_voltageB = struct.unpack('>H', bytes.fromhex(packet_data_str[1]))[0]/10.0
        pcs_voltageC = struct.unpack('>H', bytes.fromhex(packet_data_str[2]))[0]/10.0
        pcs_currentA = struct.unpack('>h', bytes.fromhex(packet_data_str[3]))[0]/10.0
        pcs_currentB = struct.unpack('>h', bytes.fromhex(packet_data_str[4]))[0]/10.0
        pcs_currentC = struct.unpack('>h', bytes.fromhex(packet_data_str[5]))[0]/10.0
        pcs_elecfeq = struct.unpack('>H', bytes.fromhex(packet_data_str[6]))[0]/10.0
        pcs_actpow = struct.unpack('>h', bytes.fromhex(packet_data_str[7]))[0]/10.0
        pcs_reactpow = struct.unpack('>h', bytes.fromhex(packet_data_str[8]))[0]/10.0
        pcs_dcvol = struct.unpack('>h', bytes.fromhex(packet_data_str[9]))[0]/10.0
        pcs_dccur = struct.unpack('>h', bytes.fromhex(packet_data_str[10]))[0]/10.0
        pcs_dcpow = struct.unpack('>h', bytes.fromhex(packet_data_str[11]))[0]/10.0
        pcs_sysstate_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[12]))[0]
        pcs_sysstate_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[13]))[0] # RESERVED
        pcs_sysfaultstate_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[14]))[0]
        pcs_sysfaultstate_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[15]))[0]

        setProperty_wrap(qroot, 'pcsAdd2000', str(pcs_voltageA))
        setProperty_wrap(qroot, 'pcsAdd2001', str(pcs_voltageB))
        setProperty_wrap(qroot, 'pcsAdd2002', str(pcs_voltageC))
        setProperty_wrap(qroot, 'pcsAdd2003', str(pcs_currentA))
        setProperty_wrap(qroot, 'pcsAdd2004', str(pcs_currentB))
        setProperty_wrap(qroot, 'pcsAdd2005', str(pcs_currentC))
        setProperty_wrap(qroot, 'pcsAdd2006', str(pcs_elecfeq))
        setProperty_wrap(qroot, 'pcsAdd2007', str(pcs_actpow))
        setProperty_wrap(qroot, 'pcsAdd2008', str(pcs_reactpow))
        setProperty_wrap(qroot, 'pcsAdd2009', str(pcs_dcvol))
        setProperty_wrap(qroot, 'pcsAdd2010', str(pcs_dccur))
        setProperty_wrap(qroot, 'pcsAdd2011', str(pcs_dcpow))

        set_distinct_property_inc0(calc_comb_bit(pcs_sysstate_1, 12, 14),\
                                               ['pcsAdd2012Bit12Val0',\
                                                    'pcsAdd2012Bit12Val1',\
                                                    'pcsAdd2012Bit12Val2',\
                                                    'pcsAdd2012Bit12Val3',\
                                                    'pcsAdd2012Bit12Val4',\
                                                'pcsAdd2012Bit12Val5'], qroot)
        set_distinct_property_inc0(calc_comb_bit(pcs_sysstate_1, 4, 5),\
                                               ['pcsAdd2012Bit4Val0',\
                                                    '',\
                                                'pcsAdd2012Bit4Val2'], qroot)
        set_distinct_property_inc0(calc_comb_bit(pcs_sysstate_1, 0, 1),\
                                               ['pcsAdd2012Bit0Val0',\
                                                    'pcsAdd2012Bit0Val1',\
                                                'pcsAdd2012Bit0Val2'], qroot)
        split_16b_property(pcs_sysfaultstate_1, ['pcsAdd2014Bit0',\
                                                'pcsAdd2014Bit1',\
                                                'pcsAdd2014Bit2',\
                                                'pcsAdd2014Bit3',\
                                                'pcsAdd2014Bit4',\
                                                'pcsAdd2014Bit5',\
                                                'pcsAdd2014Bit6',\
                                                 'pcsAdd2014Bit7',\
                                                 'pcsAdd2014Bit8',\
                                                 'pcsAdd2014Bit9',\
                                                 'pcsAdd2014Bit10',\
                                                 'pcsAdd2014Bit11',\
                                                 'pcsAdd2014Bit12',\
                                                 'pcsAdd2014Bit13',\
                                                 'pcsAdd2014Bit14',\
                                                'pcsAdd2014Bit15'], qroot)
        split_nb_property(pcs_sysfaultstate_2, ['pcsAdd2015Bit0'], qroot, 1)

        

def packet_BMS(packet, qroot):
    packet_data_str = []
    if packet['MODBUS'].func_code == '3':
        pass
    else:
        return
    if packet['MODBUS'].byte_cnt == '62':
        for field in packet['MODBUS']._get_all_fields_with_alternates():
            if isinstance(field, pyshark.packet.layer.LayerFieldsContainer):
                if field.main_field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
            if isinstance(field, pyshark.packet.layer.LayerField):
                if field.get_default_value()[0] == 'R':
                    packet_data_str.append(field.raw_value)
        bms_state = struct.unpack('>H', bytes.fromhex(packet_data_str[0]))[0]
        bms_warning = struct.unpack('>H', bytes.fromhex(packet_data_str[1]))[0]
        bms_reserved0 = struct.unpack('>H', bytes.fromhex(packet_data_str[2]))[0]
        bms_voltage_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[3]))[0]/10.0
        bms_voltage_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[4]))[0]/10.0
        bms_voltage = struct.unpack('>H', bytes.fromhex(packet_data_str[5]))[0]/10.0
        bms_current_1 = struct.unpack('>h', bytes.fromhex(packet_data_str[6]))[0]/10.0
        bms_current_2 = struct.unpack('>h', bytes.fromhex(packet_data_str[7]))[0]/10.0
        bms_current = struct.unpack('>h', bytes.fromhex(packet_data_str[8]))[0]/10.0
        bms_soc_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[9]))[0]/100.0
        bms_soc_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[10]))[0]/100.0
        bms_soc = struct.unpack('>H', bytes.fromhex(packet_data_str[11]))[0]/100.0
        bms_soh_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[12]))[0]/100.0
        bms_soh_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[13]))[0]/100.0
        bms_soh = struct.unpack('>H', bytes.fromhex(packet_data_str[14]))[0]/100.0
        bms_tocharge_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[15]))[0]
        bms_tocharge_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[16]))[0]
        bms_tocharge = struct.unpack('>H', bytes.fromhex(packet_data_str[17]))[0]
        bms_remain_1 = struct.unpack('>H', bytes.fromhex(packet_data_str[18]))[0]
        bms_remain_2 = struct.unpack('>H', bytes.fromhex(packet_data_str[19]))[0]
        bms_remain = struct.unpack('>H', bytes.fromhex(packet_data_str[20]))[0]
        bms_highvol_id = struct.unpack('>H', bytes.fromhex(packet_data_str[21]))[0]
        bms_highvol_vol = struct.unpack('>H', bytes.fromhex(packet_data_str[22]))[0]/1000.0 #/10000.0
        bms_lowvol_id = struct.unpack('>H', bytes.fromhex(packet_data_str[23]))[0]
        bms_lowvol_vol = struct.unpack('>H', bytes.fromhex(packet_data_str[24]))[0]/1000.0 #/10000.0
        bms_hightem_id = struct.unpack('>H', bytes.fromhex(packet_data_str[25]))[0]
        bms_hightem_tem = struct.unpack('>h', bytes.fromhex(packet_data_str[26]))[0]#/100.0
        bms_lowtem_id = struct.unpack('>H', bytes.fromhex(packet_data_str[27]))[0]
        bms_lowtem_tem = struct.unpack('>h', bytes.fromhex(packet_data_str[28]))[0]#/100.0

        setProperty_wrap(qroot, 'bmsAdd0004', str(bms_voltage_1))
        setProperty_wrap(qroot, 'bmsAdd0005', str(bms_voltage_2))
        setProperty_wrap(qroot, 'bmsAdd0006', str(bms_voltage))
        setProperty_wrap(qroot, 'bmsAdd0007', str(bms_current_1))
        setProperty_wrap(qroot, 'bmsAdd0008', str(bms_current_2))
        setProperty_wrap(qroot, 'bmsAdd0009', str(bms_current))
        setProperty_wrap(qroot, 'bmsAdd0010', str(bms_soc_1))
        setProperty_wrap(qroot, 'bmsAdd0011', str(bms_soc_2))
        setProperty_wrap(qroot, 'bmsAdd0012', str(bms_soc))
        setProperty_wrap(qroot, 'bmsAdd0013', str(bms_soh_1))
        setProperty_wrap(qroot, 'bmsAdd0014', str(bms_soh_2))
        setProperty_wrap(qroot, 'bmsAdd0015', str(bms_soh))
        setProperty_wrap(qroot, 'bmsAdd0016', str(bms_tocharge_1))
        setProperty_wrap(qroot, 'bmsAdd0017', str(bms_tocharge_2))
        setProperty_wrap(qroot, 'bmsAdd0018', str(bms_tocharge))
        setProperty_wrap(qroot, 'bmsAdd0019', str(bms_remain_1))
        setProperty_wrap(qroot, 'bmsAdd0020', str(bms_remain_2))
        setProperty_wrap(qroot, 'bmsAdd0021', str(bms_remain))
        setProperty_wrap(qroot, 'bmsAdd0022', str(bms_highvol_id))
        setProperty_wrap(qroot, 'bmsAdd0023', str(bms_highvol_vol))
        setProperty_wrap(qroot, 'bmsAdd0024', str(bms_lowvol_id))
        setProperty_wrap(qroot, 'bmsAdd0025', str(bms_lowvol_vol))
        setProperty_wrap(qroot, 'bmsAdd0026', str(bms_hightem_id))
        setProperty_wrap(qroot, 'bmsAdd0027', str(bms_hightem_tem))
        setProperty_wrap(qroot, 'bmsAdd0028', str(bms_lowtem_id))
        setProperty_wrap(qroot, 'bmsAdd0029', str(bms_lowtem_tem))
        split_nb_property(bms_state, ['',\
                                                'bmsAdd0001Bit1',\
                                                '',\
                                                'bmsAdd0001Bit3',\
                                                'bmsAdd0001Bit4',\
                                                'bmsAdd0001Bit5',\
                                                'bmsAdd0001Bit6'], qroot, 7)
        set_distinct_property_inc0(calc_comb_bit(bms_state, 2, 2), \
                                   ['bmsAdd0001Bit2Val0','bmsAdd0001Bit2Val1'], qroot)
        split_nb_property(bms_warning, ['bmsAdd0002Bit0',\
                                                'bmsAdd0002Bit1',\
                                                'bmsAdd0002Bit2',\
                                                'bmsAdd0002Bit3',\
                                                'bmsAdd0002Bit4',\
                                                'bmsAdd0002Bit5',\
                                                'bmsAdd0002Bit6',\
                                                'bmsAdd0002Bit7',\
                                                'bmsAdd0002Bit8',\
                                                'bmsAdd0002Bit9'], qroot, 10)
        

def packet_desalinplant(packet, qroot):
    packet_data_str = []
    if packet['MODBUS'].func_code == '3':
        pass
    else:
        return
        

def sniff_data(qroot):
    if config.settings.USING_FILE:
        cap = pyshark.FileCapture(config.settings.FILE_PATH)
        for p in cap:
            if 'MODBUS' in p:
                if p['IP'].src == config.ip.WINDTURB1:
                    packet_windturbine_1(p, qroot)
                elif p['IP'].src == config.ip.WINDTURB2:
                    # TODO
                    packet_windturbine_2(p, qroot)
                elif p['IP'].src == config.ip.PCS:
                    packet_PCS(p, qroot)
                elif p['IP'].src == config.ip.BMS:
                    packet_BMS(p, qroot)
                elif p['IP'].src == config.ip.DESALINPLANT:
                    # TODO
                    packet_desalinplant(p, qroot)
            else:
                continue
    else:
        print('using realtime sniffing...')
        # TODO
        

if __name__ == '__main__':
    
    path = 'qml/main.qml'   
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
