import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 690
    height: 420
    title: qsTr("Your planner")
    property alias textCurrentMonth: textCurrentMonth
    property alias textCurrentDay: textCurrentDay
    property alias options: options
    property alias pageOfCallendarMouseArea: pageOfCallendarMouseArea
    property alias piggyBankMouseArea: piggyBankMouseArea

    AnimatedImage {
        id: piggyBankImage
        x: 422
        y: 113
        width: 278
        height: 219
        source: "src/piggyBank.gif"
        playing: true

        MouseArea {
            id: piggyBankMouseArea
            x: 70
            y: 39
            width: 138
            height: 120
        }

        Image {
            id: pageOfCallendarImage
            x: -373
            y: 34
            width: 192
            height: 151
            source: "src/pageOfCallendar.png"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: pageOfCallendarMouseArea
                x: 35
                y: 0
                width: 125
                height: 131

                Text {
                    id: textCurrentMonth
                    x: 8
                    y: 2
                    width: 111
                    height: 27
                    enabled: true
                    font.pixelSize: 25
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Courier"
                    font.bold: false
                }

                Text {
                    id: textCurrentDay
                    x: 8
                    y: 40
                    width: 109
                    height: 78
                    text: ""
                    enabled: true
                    font.pixelSize: 77
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    topPadding: 0
                    minimumPixelSize: 59
                    font.bold: false
                    font.strikeout: false
                    font.family: "Verdana"
                }
            }
        }
    }

    Button {
        id: options
        x: 4
        y: 10
        width: 38
        height: 27
        text: "\u2630"
        background: Rectangle {
            color: "transparent"
        }
    }
}
