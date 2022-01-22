import QtQuick 2.0

import "SidebarView"

Rectangle {
    id: "sidebarView"

    // Side of sidebar, "left" or "right"
    property string side: "left"
    // Width of sidebar in pixels
    property int sidebarWidth: 150

    anchors.fill: parent
    color: "transparent"

    Sidebar {

    }

    MainView {

    }
}
