import QtQuick 2.0
import QtQuick.Controls 2.12
import StyleConstants 1.0
import Texts 1.0
import Managers 1.0

CustomMenuText {
    id: root

    property var locale: Qt.locale()

    text: GeneralTimeManager.currentDate.toLocaleString(locale, "hh : mm : ss")
}
