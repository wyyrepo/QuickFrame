import QtQuick 2.0
import QtQuick.Dialogs 1.2
import QuickFramework 0.1
import QtQuick.Controls 1.3
/*
已知问题:
如何在一个object里替换一个成员，但他的一些属性不改变
*/
QuickWindow{
    id: window
    width: quickForm.width + 2 * Theme.shadowWidth
    height: quickForm.height + 2 * Theme.shadowWidth

    QuickForm{
        id: quickForm
        width: Theme.formWidth
        height: Theme.formHeight
        anchors.centerIn: parent
        titleBar: TitleBar{
            id: titlebar
            window: window
            width: Theme.formWidth
            height: Theme.titleHeight
            title.text: "QuickFrame"
            leftctls: ControlsRow{
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.menu
                }
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.before
                }
            }
            rightctls: ControlsRow{
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.navigation
                    mouseArea.onClicked: {
                        titlebar.state = "hide"
                    }
                }
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.clear
                    mouseArea.onClicked: {
                        quickForm.state = "destroy"
                    }
                }
            }
        }
        bottomBar: Bar{
            id: bottomBar
            width: Theme.formWidth
            height: Theme.titleHeight
            leftctls: ControlsRow{
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.mail
                }
            }
            centerctls: ControlsRow{
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.down
                    mouseArea.onClicked: {
                        bottomBar.state = "hide"
                    }
                }
            }

            rightctls: ControlsRow{
                BarIcon{
                    iconSize: titlebar.iconSize
                    image.source: IconFont.refresh
                }
            }
        }

        Page{
            width: quickForm.width
            height: quickForm.height - titlebar.height - bottomBar.height
            Button{
                width: 300
                height: 60
                text: "Show"
                anchors.centerIn: parent
                onClicked: {
                    bottomBar.state = "show"
                    titlebar.state = "show"
                }
            }
        }
    }
}
