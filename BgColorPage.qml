import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: bgColorPage
    background: Rectangle{ color: bgColor }
    signal buttonClicked2();

    Rectangle {
        color: "transparent"
        anchors.fill: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                parent.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1);
                mouse.accepted = false;
            }
        }

        Text {
            anchors.centerIn: parent
            color: "chocolate"
            text: "Изменить цвет"
        }
        }

    Button{
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: bgColorPage.buttonClicked2()
    }
}
