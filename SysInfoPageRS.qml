import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: sysInfoPageRS
    background: Rectangle{ color: bgColor }
    signal buttonClicked15();

    ScrollView {
        z:1
        anchors.fill: parent
        Text { text: algoRS }
    }

    Button {
        z: 2 // помещает кнопку поверх поля, чтобы она оставалась активной
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: sysInfoPageRS.buttonClicked15()
    }
}
