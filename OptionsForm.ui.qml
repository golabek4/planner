import QtQuick 2.4
import QtQuick.Controls 2.12

Page {
    id: page
    width: 690
    height: 420
    property alias montlyEarnings: montlyEarnings
    property alias notification: notification
    property alias back: back

    Button {
        id: back
        x: 9
        y: 10
        width: 35
        height: 35
        text: stackView.depth > 1 ? "\u25C0" : "\u25C0"
        font.pointSize: 14
        padding: 12
        enabled: true
        hoverEnabled: true
        background: Rectangle {
            color: "transparent"
        }
    }

    CheckBox {
        id: notification
        x: 204
        y: 63
        width: 283
        height: 85
        text: "GETTING NOTIFICATION"
        font.bold: true
        font.family: "Arial"
        font.pointSize: 15
    }

    Rectangle {
        x: 215
        y: 186
        width: 259
        height: 25
        border.width: 2.3
        border.color: "#ad2137"
        color: "transparent"
        radius: 10

        TextInput {
            id: montlyEarnings
            x: 5
            y: 3
            width: 248
            height: 18
            maximumLength: 10
            color: "#ffffff"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            selectionColor: "#950064"
            font.bold: true
            focus: true
        }
    }

    Text {
        id: textMontlyEarnings
        x: 0
        y: 146
        width: 690
        height: 34
        color: "#ffffff"
        text: qsTr("Your montly earnings")
        font.pixelSize: 22
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignBottom
        font.bold: true
        font.family: "Verdana"
    }

    Text {
        id: author
        x: 0
        y: 388
        width: 690
        height: 32
        color: "#ffffff"
        text: qsTr("Application created by Wiktor Gołębiewski")
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        font.bold: false
    }
}
