import QtQuick 2.0

PageView{
    id: windturb

    Rectangle{
        id: wt_1

        width:windturb.width
        height:windturb.height
        color: '#eeeeee'
        Text {
            text: "1号机组"
            font.pixelSize: 30
            color: "#212121"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
        }

        Text {
            x: 10
            y: 50
            text: "机组参数"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 75
            text: "风向(度)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 95
            text: "1s风速(m/s)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 115
            text: "5min平均风速(m/s)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 135
            text: "可发平均功率预测(kw)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 155
            text: "转速(r/min)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 175
            text: "桨矩角(度)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 195
            text: "功率给定(kw)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 215
            text: "有功功率(kw)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 235
            text: "无功功率(kVar)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 255
            text: "累计发电量(kwh)"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            //id:windturb1_40007
            x: 200
            y: 75
            text: root.windturb1_40007
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40005
            x: 200
            y: 95
            text: root.windturb1_40005
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40006
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
            //id:windturb1_40008
            x: 200
            y: 155
            text: root.windturb1_40008
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40009
            x: 200
            y: 175
            text: root.windturb1_40009
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40260
            x: 200
            y: 195
            text: root.windturb1_40260
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40071
            x: 200
            y: 215
            text: root.windturb1_40071
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40072
            x: 200
            y: 235
            text: root.windturb1_40072
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40075
            x: 200
            y: 255
            text: root.windturb1_40075
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 300
            y: 75
            text: "电网电压U(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 95
            text: "电网电压V(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 115
            text: "电网电压W(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 135
            text: "输出电流U(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 155
            text: "输出电流V(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 175
            text: "输出电流W(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 195
            text: "功率因数"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            //id:windturb1_40065
            x: 500
            y: 75
            text: root.windturb1_40065
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40066
            x: 500
            y: 95
            text: root.windturb1_40066
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40067
            x: 500
            y: 115
            text: root.windturb1_40067
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40068
            x: 500
            y: 135
            text: root.windturb1_40068
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40069
            x: 500
            y: 155
            text: root.windturb1_40069
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40070
            x: 500
            y: 175
            text: root.windturb1_40070
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40073
            x: 500
            y: 195
            text: root.windturb1_40073
            font.pixelSize: 15
            color: "#212121"
        }


        Text {
            x: 10
            y: 295
            text: "运行状态"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 320
            text: "就地控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 340
            text: "启动"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40001_1
            x: 80
            y: 320
            text: root.windturb1_40001_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40003_1
            x: 80
            y: 340
            text: root.windturb1_40003_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 100
            y: 320
            text: "远程控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 100
            y: 340
            text: "运行"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40001_2
            x: 170
            y: 320
            text: root.windturb1_40001_2
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40003_2
            x: 170
            y: 340
            text: root.windturb1_40003_2
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 190
            y: 320
            text: "手动模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 190
            y: 340
            text: "暂停"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40002_1
            x: 260
            y: 320
            text: root.windturb1_40002_1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40003_3
            x: 260
            y: 340
            text: root.windturb1_40003_3
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 280
            y: 320
            text: "自动模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 280
            y: 340
            text: "停机"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40002_2
            x: 350
            y: 320
            text: root.windturb1_40002_2
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40003_4
            x: 350
            y: 340
            text: root.windturb1_40003_4
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 320
            text: "维护模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 340
            text: "急停"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40002_3
            x: 440
            y: 320
            text: root.windturb1_40002_3
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40003_5
            x: 440
            y: 340
            text: root.windturb1_40003_5
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 460
            y: 320
            text: "停机模式"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 460
            y: 340
            text: "空转"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40002_4
            x: 530
            y: 320
            text: root.windturb1_40002_4
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            //id:windturb1_40003_6
            x: 530
            y: 340
            text: root.windturb1_40003_6
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 355
            text: "故障报警"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 380
            text: "通讯故障"
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
        width:windturb.width
        height:windturb.height
        color: '#eeeeee'

        Text {
            text: "2号机组"
            font.pixelSize: 30

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
        }

        Text {
            x: 10
            y: 50
            text: "机组参数"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 75
            text: "风向(度)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 95
            text: "风速(m/s)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 115
            text: "转速(r/min)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 135
            text: "电网电压(V)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 155
            text: "电网电流(A)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 175
            text: "有功功率(kw)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 195
            text: "无功功率(kvar)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 215
            text: "电网频率(Hz)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 235
            text: "累计发电量(kwh)"
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 200
            y: 75
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 95
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 115
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 135
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 155
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 175
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 195
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 215
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 235
            text: root.var_nonbool
            font.pixelSize: 15
            color: "#212121"
        }
        //..........
        Text {
            x: 10
            y: 255+25
            text: "运行状态"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 280+25
            text: "就地控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 300+25
            text: "变流器待机"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 80
            y: 280+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 100
            y: 300+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 100
            y: 280+25
            text: "远程控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 120
            y: 300+25
            text: "运行状态"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 170
            y: 280+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 190
            y: 300+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 190
            y: 280+25
            text: "手动控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 210
            y: 300+25
            text: "停机状态"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 260
            y: 280+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 280
            y: 300+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 280
            y: 280+25
            text: "自动控制"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 350
            y: 280+25
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        //............
        Text {
            x: 10
            y: 355
            text: "故障报警"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 380
            text: "通讯故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 100
            y: 380
            text: root.var_bool
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
            text: "偏航故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 210
            y: 380
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 210
            y: 400
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 230
            y: 380
            text: "大风报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 400
            text: "逆变器故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 320
            y: 380
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 320
            y: 400
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 340
            y: 380
            text: "变桨故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 340
            y: 400
            text: "电机故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 430
            y: 380
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 430
            y: 400
            text: root.var_bool
            font.pixelSize: 15
            color: "#212121"
        }
    }
}

