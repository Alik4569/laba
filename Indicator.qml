import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: indicator
    background: Rectangle{ color: bgColor }
    signal buttonClicked18();

    Keys.onPressed: {
        if (event.key === Qt.Key_1) {
            console.log("Key 1");
            myobj.driver1Call();
        }
        if (event.key === Qt.Key_Up) {
            console.log("Up");
            msgQML = "Нажмите клавишу включения любого индикатора клавиатуры";
            msgBool = true;
        }
        if(msgBool && (event.key === Qt.Key_NumLock)){ msgQML = "NumLock pressed" }
        if(msgBool && (event.key === Qt.Key_CapsLock)){ msgQML = "CapsLock pressed" }
        if (event.key > 0x01000029 && event.key < 0x0100003c) { // адреса клавиш от F1 до F12
            console.log("F1-F12 pressed");
            myobj.driver3Call();
        }
    }

    Button {
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: indicator.buttonClicked18()
    }

    Column{
        anchors.centerIn: parent
        Text { text: "Кнопка 1, чтобы включить и выключить индикаторы" }
        Text { text: "Стрелка вверх показывает какой индикатор выключен или включен"; }
        Text { text: "F1-F12 инвертируют значения индикаторов";}

        Text{ text: " " }
        Text{ text: " " }
        Text{ text: " " }
        Text{ text: " " }

        Text{ text: msgQML }
    }
}
