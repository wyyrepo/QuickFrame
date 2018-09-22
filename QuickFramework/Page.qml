import QtQuick 2.0
import QuickFramework 0.1
/*
页面，显示界面内容，含有顶部工具栏，底部工具栏，或者标题栏
*/
Rectangle {
    id: page

    antialiasing: true
    color: Theme.formColor

    property Item topbar: null

    property Item bottomBar: null

    property Item context: null

    clip: true

    Binding{target: topbar; property: "parent";value: topBarParent}
    Binding{target: bottomBar; property: "parent";value: bottomBarParent}
    Binding{target: context; property: "parent";value: contextParent}
    Item {
        id: topBarParent
        anchors.top: parent.top
        anchors.left: parent.left
    }
    Item {
        id: contextParent
        anchors.top: parent.top
        anchors.topMargin: Theme.barHeight
        anchors.left: parent.left
    }
    Item {
        id: bottomBarParent
        anchors.bottom: parent.bottom
        anchors.left: parent.left
    }
}
