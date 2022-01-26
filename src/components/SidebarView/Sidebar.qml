import QtQuick 2.0

Rectangle {
    id: "sidebar"

    anchors.fill: parent
    anchors.rightMargin: side == "left" ? parent.width - sidebarWidth : 0
    anchors.leftMargin: side == "right" ? parent.width - sidebarWidth : 0

    clip: true

    color: transparentColor
}
