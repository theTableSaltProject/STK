import QtQuick 2.0

Rectangle {
    id: "mainView"

    anchors.fill: parent
    color: bottomColor

    clip: true

    anchors.rightMargin: side == "right" ? sidebarWidth : 0
    anchors.leftMargin: side == "left" ? sidebarWidth : 0
}
