import QtQuick 2.0
import QtQuick.Controls 2.12

HomeForm {
    piggyBankMouseArea.onClicked: {
        StackView.view.push("Second.qml")
    }

    options.onClicked: {
        StackView.view.push("Options.qml")
    }
}
