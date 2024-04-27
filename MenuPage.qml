import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

Page{
    id: menuPage
    property string selectedImage: "" // Путь к выбранному изображению

        background: Image {
            source: selectedImage
            fillMode: Image.PreserveAspectFit
        }

        // Диалог для выбора изображения
        FileDialog {
            id: fileDialog
            title: "Выберите изображение"
            folder: shortcuts.home // начинаем поиск из домашнего каталога
            nameFilters: ["Изображения (*.jpg *.jpeg *.png *.bmp)"]
            selectMultiple: false // Отключаем множественный выбор файлов
            onAccepted: {
                menuPage.selectedImage = fileDialog.fileUrl // Устанавливаем выбранное изображение
            }
        }

        // Кнопка для открытия диалогового окна выбора файла
        Button {
            text: "Выбрать изображение"
            anchors {
                left: parent.left
                top: parent.top
                margins: 10
            }
            onClicked: fileDialog.open()
        }
    signal buttonClicked();
    signal buttonClicked4();
    signal buttonClicked5();
    signal buttonClicked17();

    Column{
        anchors.centerIn: parent
        Text {
            text: "Меню"
            color: "black"
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter // Выравнивание текста по центру
                        Layout.alignment: Qt.AlignHCenter // Выравнивание элемента по центру по горизонтали
                        Layout.fillWidth: true
        }

        Button {
            text: "Фон для экрана"
            onClicked: menuPage.buttonClicked()
            Layout.alignment: Qt.AlignHCenter
        }
        Button {
            text: "Размер окна"
            Layout.fillWidth: true
            onClicked: menuPage.buttonClicked4()
            Layout.alignment: Qt.AlignHCenter
        }
        Button {
            text: "Информация о системе"
            onClicked: menuPage.buttonClicked5()
            Layout.alignment: Qt.AlignHCenter
        }
        Button {
            text: "Индикаторы клавиатуры"
            onClicked: {
                msgBool = false
                msgQML = " "
                menuPage.buttonClicked17()
            }
            Layout.alignment: Qt.AlignHCenter
        }
    }
}
