import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: sysInfoPageMemory
    background: Rectangle{ color: bgColor }
    signal buttonClicked12();

    ScrollView {
        z:1
        anchors.fill: parent
        Text { text: meminfo }
    }

    Button {
        z: 2 // помещает кнопку поверх поля, чтобы она оставалась активной
        text: "Назад"
        anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter

                // Установка выравнивания кнопки
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: sysInfoPageMemory.buttonClicked12()
    }
}
