import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: propPage
    background: Rectangle{ color: bgColor }
    signal buttonClicked3();

    Text{
        text: "Размеры:\n" + parent.width + "x" + parent.height // расчет размеров окна
        anchors.centerIn: parent
    }

    Button {
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: propPage.buttonClicked3()
    }
}
