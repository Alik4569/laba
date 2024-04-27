import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: sysInfoPage
    background: Rectangle{ color: bgColor }
    signal buttonClicked6();
    signal buttonClicked7();
    signal buttonClicked8();
    signal buttonClicked9();
    signal buttonClicked14();
    signal buttonClicked16();

    Column{
        anchors.centerIn: parent
        Button {
            text: "Девайсы"
            onClicked: sysInfoPage.buttonClicked6()
        }
        Button {
            text: "Информация о процессоре"
            onClicked: sysInfoPage.buttonClicked7()
        }
        Button {
            text: "Информация о памяти"
            onClicked: sysInfoPage.buttonClicked8()
        }
        Button {
            text: "dmesg"
            onClicked: sysInfoPage.buttonClicked14()
        }
        Button {
            text: "Алгоритм"
            onClicked: sysInfoPage.buttonClicked16()
        }
    }

    Button {
        text: "Назад"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onClicked: sysInfoPage.buttonClicked9()
    }
}
