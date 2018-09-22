import QtQuick 2.0
import QuickFramework 0.1
import "Material"
/*
标题栏，工具栏的图标控件
*/
Rectangle{
    id: barControl
    property alias mouseArea: mouseArea
    property alias image: image
    property int iconSize: Theme.iconSize
    property bool animationEnabled: true
    width: iconSize
    height: iconSize
    color: "#00000000"
    Image{
        id: image
        anchors.centerIn: barControl
        width: barControl.width - Theme.iconSpacing
        height: barControl.height - Theme.iconSpacing
        sourceSize.width: barControl.width - Theme.iconSpacing
        sourceSize.height: barControl.height - Theme.iconSpacing
    }
    Ink{

        id: mouseArea
        anchors.fill: barControl
        hoverEnabled: true
        onHoveredChanged: barControl.state = "Hover"
        onReleased: barControl.state = "Hover"
        onExited: barControl.state = "Normal"

    }

    /*
        selected rect
    */
    Rectangle{
        id: selected
        color: Theme.fontColor
        width: 0
        height: Theme.seletedRectHeight
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        antialiasing: true
        radius: 45
    }

    /*
        states,transitions and animations
    */
    states: [
        State {
            name: "Hover"
            PropertyChanges {
                target: selected
                width: image.width
            }
        },
        State {
            name: "Normal"
            PropertyChanges {
                target: selected
                width: 0
            }
        }
    ]
    transitions: [
        Transition {
            to: "Hover"
            NumberAnimation {
                duration: animationEnabled ? 200 : 0
                property: "width"
                easing.type: Easing.OutSine
            }
        },
        Transition {
            to: "Normal"
            NumberAnimation {
                duration: animationEnabled ? 200 : 0
                property: "width"
                easing.type: Easing.OutSine
            }
        }
    ]
}
