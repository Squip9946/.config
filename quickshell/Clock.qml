import Quickshell
import QtQuick


Text {
    SystemClock {
        id: sysClock
        precision: SystemClock.Seconds
    }
    anchors.centerIn: parent
    text: Qt.formatDateTime(sysClock.date, "hh:mm:ss - yyyy-MM-dd")
}
