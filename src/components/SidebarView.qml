import QtQuick 2.0

import "SidebarView"

Rectangle {
    id: "sidebarView"

    property string side: "left"
    property int sidebarWidth: 150

    anchors.fill: parent
    color: "transparent"

    Sidebar {

    }

    MainView {

    }
}
