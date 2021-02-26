import QtQuick 2.4
import QtQuick.Controls 2.12

Page {
    width: 690
    height: 420
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
}
