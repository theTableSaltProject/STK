import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: "lineEdit"

    // The type of the text field, "hollow" or "filled"
    property string type: "hollow"
    // Maximum length of input, 25 by default
    property alias maximumLength: textField.maximumLength
    // Placeholder to show when the field is empty
    property alias placeholder: textField.placeholderText

    // Get text input by user
    property alias inputText: textField.text

    // True if field is focused
    property bool focused: false


    radius: borderRadius

    border.width: borderWidth
    border.color: textField.activeFocus ? accentColor : borderColor

    color: type == "hollow" ? "transparent" : type == "filled" ? topColor : "#ff00ff"

    TextField {
        id: "textField"

        anchors.fill: parent

        color: textColor

        font.pointSize: fontSize

        maximumLength: 25

        background: Rectangle {
            color: "transparent"
        }
    }
}
