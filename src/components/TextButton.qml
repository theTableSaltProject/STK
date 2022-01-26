import QtQuick 2.0

Rectangle {
    id: "textButton"

    // Button content text
    property alias text: buttonText.text
    // Horizontal margin added to both sides of text
    property int horizontalMargin: 15
    // Vertical margin added to both top and bottom of text
    property int verticalMargin: 5
    // Visual type of button, "hollow", "outline", "filled" or "accent"
    property string type: "filled"
    // Boolean for detecting if the button is pressed
    property bool buttonPressed: false
    // Boolean for detecting if the button is hovered
    property bool buttonHover: false
    // Button mode, "click" or "toggle"
    property string mode: "click"


    radius: borderRadius
    border.width: borderWidth
    border.color: type == "outline" && buttonPressed ? accentColor : (type == "hollow" || type == "filled") && buttonHover ? borderColor : type == "accent" && buttonHover ? accentTopColor : type == "outline" && buttonHover ? accentColor : type == "hollow" || type == "filled" || type == "accent" ? "transparent" : type == "outline" ? borderColor : "#ff00ff"
    color: type == "outline" && buttonPressed ? accentColor : type == "hollow" && buttonPressed ? borderColor : type == "accent" && buttonPressed ? accentTopColor : type == "filled" && buttonPressed ? borderColor : type == "hollow" || type == "outline" ? "transparent" : type == "accent" ? accentColor : type == "filled" ? topColor : "#ff00ff"

    implicitWidth: buttonText.implicitWidth + horizontalMargin * 2
    implicitHeight: buttonText.implicitHeight + verticalMargin * 2

    Text {
        id: "buttonText"

        font.pointSize: fontSize

        text: "Click me!"
        color: textColor

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    MouseArea {
        id: "clickArea"

        hoverEnabled: true

        anchors.fill: parent

        onPressed: {
            if (mode == "click") {
                buttonPressed = true
            }
            if (mode == "toggle") {
                buttonPressed = !buttonPressed
            }
        }

        onReleased: {
            if (mode == "click") {
                buttonPressed = false
            }
        }

        onEntered: {
            buttonHover = true
        }

        onExited: {
            buttonHover = false
        }
    }
}
