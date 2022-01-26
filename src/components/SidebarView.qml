import QtQuick 2.0

import "SidebarView"

Rectangle {
    id: "sidebarView"

    // Side of sidebar, "left" or "right"
    property string side: "left"
    // Width of sidebar in pixels
    property int sidebarWidth: 150
    // Component to put inside sidebar
    property alias sidebarContent: sidebar.children
    // Component to put inside main main view
    property alias mainViewContent: mainView.children

    anchors.fill: parent
    color: "transparent"

    Sidebar {
        id: "sidebar"
    }

    MainView {
        id: "mainView"
    }
}
