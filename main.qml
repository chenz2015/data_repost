import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4



TabView {
    //风电机组1 数值
    property string windturb1_40007: '0000'
    property string windturb1_40005: '0000'
    property string windturb1_40006: '0000'
    property string windturb1_40008: '0000'
    property string windturb1_40009: '0000'
    property string windturb1_40260: '0000'
    property string windturb1_40071: '0000'
    property string windturb1_40072: '0000'
    property string windturb1_40075: '0000'
    property string windturb1_40065: '0000'
    property string windturb1_40066: '0000'
    property string windturb1_40067: '0000'
    property string windturb1_40068: '0000'
    property string windturb1_40069: '0000'
    property string windturb1_40070: '0000'
    property string windturb1_40073: '0000'
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
    //

    id: root
    width: 640
    height: 480

    Tab {
        title: "风电机组"
        WindTurb { objectName: wt }
    }
    Tab {
        title: "储能系统"
        Rectangle {
            color: "#eeeeee"
        }
    }

    Tab {
        title: "海淡设备"
        Rectangle {
            color: "#eeeeee"
        }
    }
    Tab {
        title: "ADAM"
        Rectangle {
            color: "#eeeeee"
        }
    }

}
