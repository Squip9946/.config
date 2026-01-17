import Quickshell.Io
import QtQuick

Text {
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    text: "Keyboard Backlight"
    MouseArea {
        anchors.fill: parent
        onClicked: kbd_backlight.running = true
        //onClicked: (popupWindow.visible == true) ? popupWindow.visible = false : popupWindow.visible = true
    }
    Process {
        id: kbd_backlight
        command: ["bash", "-c", "/home/qtilvi/.config/quickshell/bash/kbd_backlight.sh"]
    }
}
