import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: sysInfoPageDMESG
    background: Rectangle{ color: bgColor }
    signal buttonClicked13();

    ScrollView {
        z:1
        anchors.fill: parent
        Text { text: dmesg }
    }

    Button {
        z: 2
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: sysInfoPageDMESG.buttonClicked13()
    }
}
