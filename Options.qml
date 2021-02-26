import QtQuick 2.4
import QtQuick.Controls 2.12

OptionsForm {
    back.onClicked: {
        StackView.view.pop()
    }
}
