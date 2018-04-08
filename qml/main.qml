import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4



TabView {
    //Template
    property string var_nonbool: 'XXXX'
    property string var_bool: 'Y'
    //风电机组1 数值
    property string windturb1_40005: '0000'
    property string windturb1_40006: '0000'
    property string windturb1_40007: '0000'
    property string windturb1_40008: '0000'
    property string windturb1_40009: '0000'
    property string windturb1_40260: '0000'
    property string windturb1_40065: '0000'
    property string windturb1_40066: '0000'
    property string windturb1_40067: '0000'
    property string windturb1_40068: '0000'
    property string windturb1_40069: '0000'
    property string windturb1_40070: '0000'
    property string windturb1_40071: '0000'
    property string windturb1_40072: '0000'
    property string windturb1_40073: '0000'
    property string windturb1_40075: '0000'
    //风电机组1 布尔
    property string windturb1_40001_1: '-'
    property string windturb1_40003_1: '-'
    property string windturb1_40001_2: '-'
    property string windturb1_40003_2: '-'
    property string windturb1_40002_1: '-'
    property string windturb1_40003_3: '-'
    property string windturb1_40002_2: '-'
    property string windturb1_40003_4: '-'
    property string windturb1_40002_3: '-'
    property string windturb1_40003_5: '-'
    property string windturb1_40002_4: '-'
    property string windturb1_40003_6: '-'
    property string windturb1_40261: '-'
    property string windturb1_40010_2: '-'
    property string windturb1_40010_5: '-'
    property string windturb1_40010_0: '-'
    property string windturb1_40010_3: '-'
    property string windturb1_40010_6: '-'
    property string windturb1_40010_1: '-'
    property string windturb1_40010_4: '-'
    property string windturb1_40010_7: '-'
    //=======================================
    //风电机组2 数值
    property string windturb2Add0000: '0000'
    property string windturb2Add0001: '0000'
    property string windturb2Add0002: '0000'
    property string windturb2Add0003: '0000'
    property string windturb2Add0004: '0000'
    property string windturb2Add0005: '0000'
    property string windturb2Add0006: '0000'
    property string windturb2Add0007: '0000'
    property string windturb2Add0008: '0000'
    //风电机组2 布尔
    property string windturb2Add0010Bit0: '-'
    property string windturb2Add0010Bit1: '-'
    property string windturb2Add0010Bit2: '-'
    property string windturb2Add0010Bit3: '-'
    property string windturb2Add0010Bit4: '-'
    property string windturb2Add0010Bit5: '-'
    property string windturb2Add0010Bit6: '-'
    property string windturb2Add0011Bit0: '-'
    property string windturb2Add0011Bit1: '-'
    property string windturb2Add0011Bit2: '-'
    property string windturb2Add0011Bit3: '-'
    property string windturb2Add0011Bit4: '-'
    property string windturb2Add0011Bit5: '-'
    property string windturb2Add0034: '-'
    //=======================================
    //储能双向变流器 数值
    property string pcsAdd2000: '0000'
    property string pcsAdd2001: '0000'
    property string pcsAdd2002: '0000'
    property string pcsAdd2003: '0000'
    property string pcsAdd2004: '0000'
    property string pcsAdd2005: '0000'
    property string pcsAdd2006: '0000'
    property string pcsAdd2007: '0000'
    property string pcsAdd2008: '0000'
    property string pcsAdd2009: '0000'
    property string pcsAdd2010: '0000'
    property string pcsAdd2011: '0000'
    //储能双向变流器 布尔
    property string pcsAdd2012Bit0Val0: '-'
    property string pcsAdd2012Bit0Val1: '-'
    property string pcsAdd2012Bit0Val2: '-'
    property string pcsAdd2012Bit4Val0: '-'
    property string pcsAdd2012Bit4Val2: '-'
    property string pcsAdd2012Bit12Val0: '-'
    property string pcsAdd2012Bit12Val1: '-'
    property string pcsAdd2012Bit12Val2: '-'
    property string pcsAdd2012Bit12Val3: '-'
    property string pcsAdd2012Bit12Val4: '-'
    property string pcsAdd2012Bit12Val5: '-'
    property string pcsAdd2014Bit0: '-'
    property string pcsAdd2014Bit1: '-'
    property string pcsAdd2014Bit2: '-'
    property string pcsAdd2014Bit3: '-'
    property string pcsAdd2014Bit4: '-'
    property string pcsAdd2014Bit5: '-'
    property string pcsAdd2014Bit6: '-'
    property string pcsAdd2014Bit7: '-'
    property string pcsAdd2014Bit8: '-'
    property string pcsAdd2014Bit9: '-'
    property string pcsAdd2014Bit10: '-'
    property string pcsAdd2014Bit11: '-'
    property string pcsAdd2014Bit12: '-'
    property string pcsAdd2014Bit13: '-'
    property string pcsAdd2014Bit14: '-'
    property string pcsAdd2014Bit15: '-'
    property string pcsAdd2015Bit0: '-'
    //=======================================
    //电池组 数值
    property string bmsAdd0004: '0000'
    property string bmsAdd0005: '0000'
    property string bmsAdd0006: '0000'
    property string bmsAdd0007: '0000'
    property string bmsAdd0008: '0000'
    property string bmsAdd0009: '0000'
    property string bmsAdd0010: '0000'
    property string bmsAdd0011: '0000'
    property string bmsAdd0012: '0000'
    property string bmsAdd0013: '0000'
    property string bmsAdd0014: '0000'
    property string bmsAdd0015: '0000'
    property string bmsAdd0016: '0000'
    property string bmsAdd0017: '0000'
    property string bmsAdd0018: '0000'
    property string bmsAdd0019: '0000'
    property string bmsAdd0020: '0000'
    property string bmsAdd0021: '0000'
    property string bmsAdd0022: '0000'
    property string bmsAdd0023: '0000'
    property string bmsAdd0024: '0000'
    property string bmsAdd0025: '0000'
    property string bmsAdd0026: '0000'
    property string bmsAdd0027: '0000'
    property string bmsAdd0028: '0000'
    property string bmsAdd0029: '0000'
    //电池组 布尔
    property string bmsAdd0001Bit1: '-'
    property string bmsAdd0001Bit2Val0: '-'
    property string bmsAdd0001Bit2Val1: '-'
    property string bmsAdd0001Bit3: '-'
    property string bmsAdd0001Bit4: '-'
    property string bmsAdd0001Bit5: '-'
    property string bmsAdd0001Bit6: '-'
    property string bmsAdd0002Bit0: '-'
    property string bmsAdd0002Bit1: '-'
    property string bmsAdd0002Bit2: '-'
    property string bmsAdd0002Bit3: '-'
    property string bmsAdd0002Bit4: '-'
    property string bmsAdd0002Bit5: '-'
    property string bmsAdd0002Bit6: '-'
    property string bmsAdd0002Bit7: '-'
    property string bmsAdd0002Bit8: '-'
    property string bmsAdd0002Bit9: '-'
    //=======================================
    //海水淡化 数值
    property string desalinplantAdd1007: '0000'
    property string desalinplantAdd1008: '0000'
    property string desalinplantAdd1009: '0000'
    property string desalinplantAdd1010: '0000'
    property string desalinplantAdd1011: '0000'
    property string desalinplantAdd1013: '0000'
    property string desalinplantAdd1014: '0000'
    property string desalinplantAdd1015: '0000'
    property string desalinplantAdd1016: '0000'
    property string desalinplantAdd1018: '0000'
    //海水淡化 布尔
    property string desalinplantAdd1002Bit0Val0: '-'
    property string desalinplantAdd1002Bit0Val1: '-'
    property string desalinplantAdd1001Bit0: '-'
    property string desalinplantAdd1001Bit1: '-'
    property string desalinplantAdd1001Bit2: '-'
    property string desalinplantAdd1001Bit3: '-'
    property string desalinplantAdd1001Bit4: '-'
    property string desalinplantAdd1001Bit5: '-'
    property string desalinplantAdd1001Bit6: '-'
    property string desalinplantAdd1001Bit7: '-'
    property string desalinplantAdd1003Bit0: '-'
    property string desalinplantAdd1003Bit1: '-'
    property string desalinplantAdd1003Bit2: '-'
    property string desalinplantAdd1003Bit3: '-'
    property string desalinplantAdd1003Bit4: '-'
    property string desalinplantAdd1003Bit5: '-'
    property string desalinplantAdd1003Bit6: '-'
    property string desalinplantAdd1003Bit7: '-'
    property string desalinplantAdd1004Bit0: '-'
    property string desalinplantAdd1004Bit1: '-'
    property string desalinplantAdd1004Bit2: '-'
    property string desalinplantAdd1004Bit3: '-'
    property string desalinplantAdd1004Bit4: '-'
    property string desalinplantAdd1004Bit5: '-'
    property string desalinplantAdd1004Bit6: '-'
    property string desalinplantAdd1004Bit7: '-'

    id: root
    width: 640
    height: 480

    Tab {
        title: "风电机组"
        WindTurb {}
    }
    Tab {
        title: "储能系统"
        PowerSystem {}
    }

    Tab {
        title: "海淡设备"
        DesalinPlant {}
    }
    Tab {
        title: "ADAM"
        Rectangle {
            color: "#eeeeee"
        }
    }

}
