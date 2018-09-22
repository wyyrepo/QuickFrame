import QtQuick 2.0
import QuickFramework 0.1
/*
工具栏，标题栏的base object
*/
Rectangle {
    id: bar

    color: Theme.backgroundColor
    antialiasing: true

    property var iconCount: 15

    property var normalSize: 40

    property var iconSize:((bar.width - ((iconCount - 1) * Theme.controlsSpacing)) / iconCount) > normalSize ? normalSize : (bar.width - ((iconCount - 1) * Theme.controlsSpacing)) / iconCount

    property Item leftctls
    property Item rightctls
    property Item centerctls


    Binding{
        target: leftctls
        property: "parent"
        value: leftctlsArea
    }
    Binding{
        target: centerctls
        property: "parent"
        value: centerctlsArea
    }
    Binding{
        target: rightctls
        property: "parent"
        value: rightctlsArea

    }
    Item {
        id: leftctlsArea
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        implicitHeight: childrenRect.height
        implicitWidth: childrenRect.width
        height: visibleChildren.length > 0 ? implicitHeight: 0
        z: 1
    }
    Item {
        id: rightctlsArea
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        implicitHeight: childrenRect.height
        implicitWidth: childrenRect.width
        height: visibleChildren.length > 0 ? implicitHeight: 0

        z: 3
    }
    Item {
        id: centerctlsArea
        anchors.centerIn: parent
        implicitHeight: childrenRect.height
        implicitWidth: childrenRect.width
        height: visibleChildren.length > 0 ? implicitHeight: 0

        z: 2
    }

    states: [
        State {
            name: "hide"
            PropertyChanges {
                target: bar
                height: 0
                opacity: 0
            }
        },
        State {
            name: "show"
            PropertyChanges {
                target: bar
                height: Theme.titleHeight
                opacity: 1
            }
        }
    ]
    transitions: [
        Transition {
            to: "show"
            SequentialAnimation{
                ScriptAction{
                    script: {
                        bar.visible = true
                    }
                }
                NumberAnimation {
                    properties: "opacity,height"
                    duration: 300
                    easing.type: Easing.OutSine
                }
            }
        },
        Transition {
            to: "hide"
            SequentialAnimation{
                NumberAnimation {
                    properties: "opacity,height"
                    duration: 300
                    easing.type: Easing.OutSine
                }
                ScriptAction{
                    script: {
                        bar.visible = false
                    }
                }
            }
        }
    ]
}
