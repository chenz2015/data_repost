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
        // Line 1
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
            x: 250
            y: 360
            text: "交流欠压保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 360
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 360
            text: "交流过频保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 470
            y: 360
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        // Line 2
        Text {
            x: 10
            y: 380
            text: "交流欠频保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 380
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 380
            text: "过载保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 380
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 380
            text: "过温保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 380
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 380
            text: "绝缘保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 470
            y: 380
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        // Line 3
        Text {
            x: 10
            y: 400
            text: "直流过压保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 400
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 400
            text: "直流欠压保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 400
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 400
            text: "内部短路保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 400
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 400
            text: "直流极性反接保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 470+30
            y: 400
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        // Line 4
        Text {
            x: 10
            y: 420
            text: "相序错误保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 420
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 420
            text: "开关状态异常保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230+30
            y: 420
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250+30
            y: 420
            text: "系统状态流保护"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350+30+30
            y: 420
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370+30+30
            y: 420
            text: "响应BMS故障停机"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 470+30+30+30
            y: 420
            text: root.windturb1_40261
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

        Text {
            x: 10
            y: 50
            text: "系统状态"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 75
            text: "远程"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 95
            text: "就地"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 115
            text: "维护"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 70
            y: 75
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 70
            y: 95
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 70
            y: 115
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 170
            y: 75
            text: "运行"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 170
            y: 95
            text: "均衡"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 230
            y: 75
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 95
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 330
            y: 75
            text: "报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 330
            y: 95
            text: "故障"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 390
            y: 75
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 390
            y: 95
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 135
            text: "电池组遥测量"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 160
            text: "电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 180
            text: "电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 80
            y: 160
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 80
            y: 180
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 180
            y: 160
            text: "SOC(%)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 180
            y: 180
            text: "SOH(%)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 160
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 180
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 350
            y: 160
            text: "可充(kWh)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 180
            text: "可放(kWh)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 450
            y: 160
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 450
            y: 180
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 200
            text: "1#电池组"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 225
            text: "电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 245
            text: "SOC(%)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 265
            text: "可放电量(kWh)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 225
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 245
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 265
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 150
            y: 225
            text: "电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 150
            y: 245
            text: "SOH(%)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 150
            y: 265
            text: "可充电量(kWh)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 225
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 245
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 265
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10+300
            y: 200
            text: "2#电池组"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10+300
            y: 225
            text: "电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10+300
            y: 245
            text: "SOC(%)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10+300
            y: 265
            text: "可放电量(kWh)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 225
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 245
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 265
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 150+300
            y: 225
            text: "电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 150+300
            y: 245
            text: "SOH(%)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 150+300
            y: 265
            text: "可充电量(kWh)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250+300
            y: 225
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250+300
            y: 245
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250+300
            y: 265
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        //------------------sep line----
        Rectangle{
            x: 0
            y: 285
            width: 640
            height: 2
            color: "#212121"
        }
        Text {
            x: 10
            y: 290
            text: "单体高压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 310
            text: "单体高压号"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 330
            text: "单体高温(℃)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 350
            text: "单体高温编号"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 290
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 310
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 330
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 350
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10+300
            y: 290
            text: "单体低压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10+300
            y: 310
            text: "单体低压号"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10+300
            y: 330
            text: "单体低温(℃)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10+300
            y: 350
            text: "单体低温编号"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 290
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 310
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 330
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110+300
            y: 350
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 370
            text: "报警/故障"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 395
            text: "电池充满报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 395
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 395
            text: "电池放空报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 395
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 395
            text: "电流报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 395
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 395
            text: "温度报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 470
            y: 395
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        //.....
        Text {
            x: 10
            y: 415
            text: "电池充满故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 415
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 415
            text: "电池放空故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 415
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 415
            text: "温度故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 415
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 415
            text: "电流故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 470
            y: 415
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        //the last line
        Text {
            x: 10
            y: 435
            text: "BMS内部故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 435
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 435
            text: "BMS通讯故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 435
            text: root.windturb1_40261
            font.pixelSize: 15
            color: "#212121"
        }
    }
}

