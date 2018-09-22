import QtQuick 2.0
import QuickFramework 0.1
import QtGraphicalEffects 1.0
/*
this object can be used to be window shadow
*/
RectangularGlow {
    id: shadowEffect
    width: parent.width
    height: parent.height
    anchors.centerIn: parent
    glowRadius: Theme.shadowGlowRadius
    spread: Theme.shadowSpread
    color: Theme.shadowColor
    cornerRadius: Theme.shadowCornerRadius
}

