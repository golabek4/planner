import QtQuick 2.4
import QtQuick.Controls 2.12
import notification.earnings 1.0

OptionsForm {
    back.onClicked: {
        StackView.view.pop()
    }

    OptionsNE {
            id: optionsNE
    }

    notification.onCheckedChanged: {
        if(notification.checked == true){
            optionsNE.setOnNotification();
        } else {
            optionsNE.setOffNotification();
        }
    }
}
