import QtQuick 2.0

PageView{
    id: powersys

    Rectangle{
        id: pcs

        width:powersys.width
        height:powersys.height
        color: '#eeeeee'
        Text {
            text: "储能双向变流器"
            font.pixelSize: 30
            color: "#212121"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
        }

        Text {
            x: 10
            y: 50
            text: "运行模式"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 75
            text: "EMS正在控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 95
            text: "开机状态"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 115
            text: "正在调试"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 135
            text: "停机状态"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 155
            text: "故障锁定状态"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 200
            y: 75
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 95
            text: root.windturb1_40005
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 115
            text: root.windturb1_40006
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 135
            text: "unknown"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 155
            text: root.windturb1_40008
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 300
            y: 75
            text: "V/F模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 95
            text: "P/Q模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 115
            text: "均压维护模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 135
            text: "恒压充放电模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 155
            text: "SOC标定模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 175
            text: "电池维护模式"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 500
            y: 75
            text: root.windturb1_40065
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 95
            text: root.windturb1_40066
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 115
            text: root.windturb1_40067
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 135
            text: root.windturb1_40068
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 155
            text: root.windturb1_40069
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 175
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 195
            text: "遥测数据"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 220
            text: "A相电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 240
            text: "B相电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 260
            text: "C相电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 280
            text: "无功功率(Var)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 300
            text: "有功功率(kW)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 320
            text: "电网频率(Hz)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 220
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 240
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 260
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 280
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 300
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 320
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 300
            y: 220
            text: "A相电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 240
            text: "B相电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 260
            text: "C相电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 280
            text: "直流电压值(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 300
            text: "直流电流值(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 320
            text: "直流侧功率(kW)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 220
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 240
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 260
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 280
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 300
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 320
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 335
            text: "报警/故障"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 360
            text: "交流过流保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 360
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 360
            text: "交流过压保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 360
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 150
            y: 360
            text: "直流过压保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 360
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }


        Text {
            x: 10
            y: 400
            text: "变桨故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 420
            text: "逆变器故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40261
            x: 100
            y: 380
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_2
            x: 100
            y: 400
            text: root.windturb1_40010_2
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_5
            x: 100
            y: 420
            text: root.windturb1_40010_5
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 120
            y: 380
            text: "电机超速"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 120
            y: 400
            text: "电机故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 120
            y: 420
            text: "安全链故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_0
            x: 210
            y: 380
            text: root.windturb1_40010_0
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_3
            x: 210
            y: 400
            text: root.windturb1_40010_3
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_6
            x: 210
            y: 420
            text: root.windturb1_40010_6
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 230
            y: 380
            text: "直流过压"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 400
            text: "偏航故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 420
            text: "大风报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_1
            x: 320
            y: 380
            text: root.windturb1_40010_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_4
            x: 320
            y: 400
            text: root.windturb1_40010_4
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id: windturb1_40010_7
            x: 320
            y: 420
            text: root.windturb1_40010_7
            font.pixelSize: 15
            color: "#212121"
        }

    }
    Rectangle{
        width:powersys.width
        height:powersys.height
        color: '#eeeeee'

        Text {
            text: "电池组"
            font.pixelSize: 30

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
        }

    }
}

