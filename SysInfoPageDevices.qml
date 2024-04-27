import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12



Page{
    id: sysInfoPageDevices
    background: Rectangle{ color: bgColor }
    signal buttonClicked10();

    ScrollView {
        z:1
        anchors.fill: parent
        Text { text: devices }
    }

    Button {
        z: 2 // помещает кнопку поверх поля, чтобы она оставалась активной
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: sysInfoPageDevices.buttonClicked10()
    }
}
