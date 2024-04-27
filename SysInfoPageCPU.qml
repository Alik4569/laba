import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: sysInfoPageCPU
    background: Rectangle{ color: bgColor }
    signal buttonClicked11();

    ScrollView {
        z:1 // тут первый слой
        anchors.fill: parent
        Text { text: cpuinfo }
    }

    Button {
        z: 2 // помещает кнопку поверх поля, чтобы она оставалась активной
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: sysInfoPageCPU.buttonClicked11()
    }
}
