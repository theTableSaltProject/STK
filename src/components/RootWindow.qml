import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    id: "root"

    // Theming properties, will later be picked from a config file
    // Colors
    property color bottomColor: "#1d1d1d"
    property color middleColor: "#2d2d2d"
    property color topColor: "#444444"
    property color borderColor: "#676767"
    property color accentColor: "#2a8cc1"
    property color accentBorderColor: "#6ecff5"
    property color transparentColor: "#aa2d2d2d"

    // Text styling
    property color textColor: "#ffffff"
    property int smallFontSize: 8
    property int fontSize: 10
    property int bigFontSize: 13
    property int titleFontSize: 17

    // Border styling
    property int borderRadius: 6
    property double borderWidth: 1.25

    visible: true
    color: "transparent"
}
