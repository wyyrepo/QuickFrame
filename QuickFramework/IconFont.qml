pragma Singleton

import QtQuick 2.0

QtObject{
    id: iconFont
    //this object save some useful icons for project

    /*
        material
    */
    readonly property url right: "./Icon/right.svg"
    readonly property url left: "./Icon/left.svg"
    readonly property url down: "./Icon/down.svg"
    readonly property url up: "./Icon/up.svg"
    readonly property url list: "./Icon/list.svg"
    readonly property url more: "./Icon/more.svg"
    readonly property url modeComment: "./Icon/modecomment.svg"
    readonly property url mail: "./Icon/mail.svg"
    readonly property url menu: "./Icon/menu.svg"
    readonly property url before: "./Icon/before.svg"
    readonly property url fishEye: "./Icon/fisheye.svg"
    readonly property url room: "./Icon/room.svg"
    readonly property url refresh: "./Icon/refresh.svg"
    readonly property url remove: "./Icon/remove.svg"
    readonly property url search: "./Icon/search.svg"
    readonly property url send: "./Icon/send.svg"
    readonly property url settings: "./Icon/settings.svg"
    readonly property url cloud: "./Icon/cloud.svg"

    readonly property url accessClock: "./Icon/accessclock.svg"
    readonly property url alarm: "./Icon/alarm.svg"
    readonly property url plus: "./Icon/plus.svg"
    readonly property url brokenPicture: "./Icon/brokenpicture.svg"
    readonly property url bubble: "./Icon/bubble.svg"
    readonly property url chat: "./Icon/chat.svg"
    readonly property url code: "./Icon/code.svg"
    readonly property url clear: "./Icon/clear.svg"
    readonly property url create: "./Icon/create.svg"
    readonly property url file: "./Icon/file.svg"
    readonly property url details: "./Icon/details.svg"
    readonly property url desktop: "./Icon/desktop.svg"
    readonly property url doneAll: "./Icon/doneall.svg"
    readonly property url done: "./Icon/done.svg"
    readonly property url edit: "./Icon/edit.svg"
    readonly property url heart: "./Icon/heart.svg"
    readonly property url feedback: "./Icon/feedback.svg"
    readonly property url flag: "./Icon/flag.svg"
    readonly property url folder: "./Icon/folder.svg"
    readonly property url forum: "./Icon/forum.svg"
    readonly property url home: "./Icon/home.svg"
    readonly property url picture: "./Icon/picture.svg"
    readonly property url label: "./Icon/label.svg"
    readonly property url notification: "./Icon/notification.svg"
    readonly property url navigation: "./Icon/navigation.svg"
    readonly property url movie: "./Icon/movie.svg"
    readonly property url wifi: "./Icon/wifi.svg"
    readonly property url person: "./Icon/person.svg"

    readonly property url square: "./Icon/square.png"
    readonly property url close: "./Icon/close.png"

    function get(name,type)
    {
        return "./Icon/"+ name +"."+type+""
    }



}
