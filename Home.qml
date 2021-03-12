import QtQuick 2.0
import QtQuick.Controls 2.12

HomeForm {
    piggyBankMouseArea.onClicked: {
        StackView.view.push("Second.qml")
    }

    options.onClicked: {
        StackView.view.push("Options.qml")
    }

    textCurrentMonth.enabled:  {
        textCurrentMonth.text = month()

    }

    textCurrentDay.enabled: {
        textCurrentDay.text = day()
    }

    function month() {
        var tab = ['January', 'February', 'March', 'April', 'May', 'June', 'Jule', 'August', 'September', 'October', 'November', 'December']
        var monthh
        for(var i = 1; i<=12; i++){
            if(i<10) {
                if(Qt.formatDateTime(new Date(), "MM") == "0" + Number(i).toLocaleString()){
                    monthh = tab[i-1]
                }
            } else {
                if(Qt.formatDateTime(new Date(), "MM") == Number(i).toLocaleString()){
                    monthh = tab[i-1]
                }
            }
        }
        return monthh
    }

    function day(){
        return Qt.formatDateTime(new Date(), "dd")
    }
}
