import QtQuick 2.0
import QuickFramework 0.1
/*
标题栏，含有标题，左部控件和右部控件
*/
Bar{
    id: titleBar
    property alias title: titleText

    property var window




    MouseArea {
        id: dragRegion
        anchors.fill: parent
        property point clickPos: "0,0"
        onPressed: {
            clickPos = Qt.point(mouse.x,mouse.y)
        }
        onPositionChanged: {
            var delta = Qt.point(mouse.x-clickPos.x, mouse.y-clickPos.y)
            window.setX(window.x+delta.x)
            window.setY(window.y+delta.y)
        }
    }
    //title text
    Text {
        id: titleText
        anchors.centerIn: parent
        color: Theme.fontColor
        font.family: Theme.fontFamily
        font.pointSize: Theme.fontSmallPointSize
    }

}
