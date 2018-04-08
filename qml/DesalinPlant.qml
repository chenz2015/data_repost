import QtQuick 2.0

PageView{
    id: desalinplant
    Rectangle{

        width:desalinplant.width
        height:desalinplant.height
        color: '#eeeeee'
        Text {
            text: "海淡设备"
            font.pixelSize: 30
            color: "#212121"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.margins: 5
        }

        Text {
            x: 10
            y: 50
            text: "运行参数"
            font.pixelSize: 20
            color: "#0091ea"
        }

        Text {
            x: 10
            y: 75
            text: "产水量(吨/小时)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 75
            text: root.desalinplantAdd1009
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 75
            text: "负载功率(kW)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 75
            text: root.desalinplantAdd1007
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
            text: "远程"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 80
            y: 95
            text: root.desalinplantAdd1002Bit0Val0
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 80
            y: 115
            text: root.desalinplantAdd1002Bit0Val1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 150
            y: 95
            text: "通讯报警"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 220
            y: 95
            text: root.desalinplantAdd1018
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 135
            text: "系统正常"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 155
            text: "启动过程"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 135
            text: root.desalinplantAdd1001Bit0
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 155
            text: root.desalinplantAdd1001Bit1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 135
            text: "正常运行"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 155
            text: "正常停机过程中"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 135
            text: root.desalinplantAdd1001Bit2
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 155
            text: root.desalinplantAdd1001Bit3
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 270
            y: 135
            text: "停机结束"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 270
            y: 155
            text: "非正常停机"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 135
            text: root.desalinplantAdd1001Bit4
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 370
            y: 155
            text: root.desalinplantAdd1001Bit5
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 390
            y: 135
            text: "淡水冲洗"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 390
            y: 155
            text: "淡水冲洗结束"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 490
            y: 135
            text: root.desalinplantAdd1001Bit6
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 490
            y: 155
            text: root.desalinplantAdd1001Bit7
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 175
            text: "原水箱(cm)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 175
            text: root.desalinplantAdd1013
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 175
            text: "UF产水箱(cm)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 175
            text: root.desalinplantAdd1014
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 195
            text: "一级产水流量(t/h)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 195
            text: root.desalinplantAdd1008
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 195
            text: "一级产水电导(uS/cm)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 195
            text: root.desalinplantAdd1010
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 215
            text: "二级产水流量(t/h)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 215
            text: root.desalinplantAdd1009
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 215
            text: "二级产水电导(uS/cm)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 215
            text: root.desalinplantAdd1011
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 235
            text: "一级产水箱(cm)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 200
            y: 235
            text: root.desalinplantAdd1015
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 300
            y: 235
            text: "二级产水箱(cm)"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 235
            text: root.desalinplantAdd1016
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 355-100
            text: "故障报警"
            font.pixelSize: 20
            color: "#0091ea"
        }
        Text {
            x: 10
            y: 380-100
            text: "氧化剂液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 400-100
            text: "氯化铁液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 420-100
            text: "盐酸液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 380-100
            text: root.desalinplantAdd1004Bit0
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 400-100
            text: root.desalinplantAdd1004Bit1
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 110
            y: 420-100
            text: root.desalinplantAdd1004Bit2
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 130
            y: 380-100
            text: "阻垢剂液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 400-100
            text: "还原剂液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 420-100
            text: "氯化钙液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 380-100
            text: root.desalinplantAdd1004Bit3
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 400-100
            text: root.desalinplantAdd1004Bit4
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 230
            y: 420-100
            text: root.desalinplantAdd1004Bit5
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 250
            y: 380-100
            text: "碳酸氢钠液位低"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 400-100
            text: "产水高压"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 250
            y: 420-100
            text: "取水泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 360
            y: 380-100
            text: root.desalinplantAdd1004Bit6
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 360
            y: 400-100
            text: root.desalinplantAdd1003Bit0
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 360
            y: 420-100
            text: root.desalinplantAdd1003Bit1
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 380
            y: 380-100
            text: "一级高压泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 380
            y: 400-100
            text: "压力提升泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 380
            y: 420-100
            text: "二级高压泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 380-100
            text: root.desalinplantAdd1003Bit5
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 400-100
            text: root.desalinplantAdd1003Bit6
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 500
            y: 420-100
            text: root.desalinplantAdd1003Bit7
            font.pixelSize: 15
            color: "#212121"
        }

        Text {
            x: 10
            y: 350
            text: "UF增压泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 370
            text: "UF反洗水泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 10
            y: 390
            text: "一级增压泵故障"
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 350
            text: root.desalinplantAdd1003Bit2
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 370
            text: root.desalinplantAdd1003Bit3
            font.pixelSize: 15
            color: "#212121"
        }
        Text {
            x: 130
            y: 390
            text: root.desalinplantAdd1003Bit4
            font.pixelSize: 15
            color: "#212121"
        }
    }

}

