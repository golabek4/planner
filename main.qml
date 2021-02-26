import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Your planner")

    StackView {
        id: stackView
        initialItem: "Home.qml"
        anchors.fill: parent
    }
}
