import QtQuick 2.0
import QuickFramework 0.1
/*
ver: 0.1
*/
Row{
    id: controlsRow
    spacing: Theme.controlsSpacing
    property var childrenCount: {
        var s = 0;
        for(var i in children)
            s++;
        return s;
    }
}

