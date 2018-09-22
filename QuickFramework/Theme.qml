pragma Singleton

import QtQuick 2.0

/*
单例object，存放全局设置
*/
QtObject{
    id: theme
    /*
    this is a object that save the  settings.
    */

    property color backgroundColor: "#d35400"
    property color highlightColor: "#e67e22"
    property color fontColor: "#ecf0f1"
    property color disabledColor: "#7f8c8d"
    property color formColor: "#ecf0f1"

    property var iconSpacing: 10
    property var controlsSpacing: 10
    property var titleHeight: 45
    property var barHeight: 45
    property var fontSmallPointSize: 15
    property var seletedRectHeight: 2

    /*
        shadow
    */
    property var shadowWidth: 35
    property color shadowColor: "#9e9e9e"
    property var shadowCornerRadius: 20
    property var shadowGlowRadius: 20
    property var shadowSpread: 0

    property var formWidth: 640
    property var formHeight: 480

    property var fontFamily: "Consolas"


}
