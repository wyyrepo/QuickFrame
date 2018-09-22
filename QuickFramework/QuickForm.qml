import QtQuick 2.0
import QuickFramework 0.1
/*
QuickWindow的主区域，用于集合页面和标题栏，便于动画过渡
*/
Rectangle {
    id: quickForm
    color: "#00000000"

    antialiasing: true

    property Item titleBar
    property Item bottomBar
    property Item context
    default property alias data: contentArea.data

    Binding{
        target: titleBar
        property: "parent"
        value: topBarArea
    }
    Binding{
        target: bottomBar
        property: "parent"
        value: bottomBarArea
    }
    Binding{
        target: context
        property: "parent"
        value: contentArea
    }
    Item {
        id: topBarArea
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        implicitHeight: childrenRect.height
        height: visibleChildren.length > 0 ? implicitHeight: 0
        z: 1
    }
    Item {
        id: contentArea
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: topBarArea.bottom
        anchors.bottom: bottomBarArea.top
        z: 3
    }
    Item {
        id: bottomBarArea
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        implicitHeight: childrenRect.height
        height: visibleChildren.length > 0 ? implicitHeight: 0
        z: 2
    }


    WindowShadow{
        id: shadow
        width: Theme.formWidth
        height: Theme.formHeight
        anchors.centerIn: parent
    }

    Component.onCompleted: {
        quickForm.state = "load"
    }

    transform: Rotation {
        id: quickFormRotation
        origin.x: quickForm.width / 2;
        origin.y: quickForm.height / 2;
        axis { x: 1; y: 0; z: 0 }
        angle: 20

    }

    states: [
        State {
            name: "load"
            PropertyChanges {
                target: quickFormRotation
                angle: 0
            }
            PropertyChanges {
                target: quickForm
                scale: 1
                opacity: 1
            }
        },
        State {
            name: "destroy"
            PropertyChanges {
                target: quickFormRotation
                angle: -20
            }
            PropertyChanges {
                target: quickForm
                scale: 0.85
                opacity: 0
            }
        }
    ]

    transitions: [
        Transition {
            to: "load"

            NumberAnimation {
                property: "angle"
                duration: 350
                easing.type: Easing.OutSine
            }

            NumberAnimation {
                property: "opacity"
                duration: 350
                from: 0
                easing.type: Easing.OutSine
            }
            NumberAnimation {
                property: "scale"
                duration: 350
                from: 0.85
                easing.type: Easing.OutSine
            }

        },
        Transition {
            to: "destroy"
            SequentialAnimation{
                ParallelAnimation{
                    NumberAnimation {
                        property: "angle"
                        duration: 350
                        easing.type: Easing.InSine
                    }
                    NumberAnimation {
                        properties: "opacity,scale"
                        duration: 350
                        from: 1
                        easing.type: Easing.InSine
                    }
                }
                ScriptAction{
                    script: {
                        Qt.quit()
                    }
                }
            }

        }
    ]


}
