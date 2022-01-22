import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    id: "root"

    // Colors, will later be picked from a config file
    property color bottomColor: "#1d1d1d"
    property color middleColor: "#2d2d2d"
    property color topColor: "#444444"
    property color borderColor: "#676767"
    property color accentColor: "#2a8cc1"
    property color accentBorderColor: "#6ecff5"
    property color transparentColor: "#aa2d2d2d"
    property color textColor: "#ffffff"

    visible: true
    color: "transparent"
}
