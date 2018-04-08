import QtQuick 2.0


ListView{
    id: root
    //width: 640
    //height: 480
    model: pageModel

    default property alias content: pageModel.children
    VisualItemModel {id: pageModel}

    orientation: ListView.Horizontal
    snapMode: ListView.SnapOneItem
    highlightRangeMode: ListView.StrictlyEnforceRange
    cacheBuffer: 3
    boundsBehavior: Flickable.StopAtBounds

    ListViewIndicator{
        target : root
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        z: 2
    }
}
