import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: window
    visible: true
    width: 900
    height: 600
    title: qsTr("laba")

    property string bgColor: "white" //глобальные переменные (только для QML)
    property string msgQML: " "
    property bool msgBool: false

    StackView{
        id:stackView
        anchors.fill:parent
        initialItem: page0
    }

    MenuPage {
        id: page0
        onButtonClicked: stackView.push(page1)
        onButtonClicked4: stackView.push(page2)
        onButtonClicked5: stackView.push(page3)
        onButtonClicked17: stackView.push(page9)
    }

    BgColorPage {
        id: page1
        visible: false
        onButtonClicked2: stackView.pop()
    }

    PropPage {
        id:page2
        visible: false
        onButtonClicked3: stackView.pop()
    }

    SysInfoPage {
        id: page3
        visible: false
        onButtonClicked6: stackView.push(page4)
        onButtonClicked7: stackView.push(page5)
        onButtonClicked8: stackView.push(page6)
        onButtonClicked9: stackView.pop()
        onButtonClicked14: stackView.push(page7)
        onButtonClicked16: stackView.push(page8)
    }

    SysInfoPageDevices {
        id: page4
        visible: false
        onButtonClicked10: stackView.pop()
    }

    SysInfoPageCPU {
        id: page5
        visible: false
        onButtonClicked11: stackView.pop()
    }

    SysInfoPageMemory {
        id: page6
        visible: false
        onButtonClicked12: stackView.pop()
    }

    SysInfoPageDMESG {
        id: page7
        visible: false
        onButtonClicked13: stackView.pop()
    }

    SysInfoPageRS {
        id: page8
        visible: false
        onButtonClicked15: stackView.pop()
    }

    Indicator {
        id: page9
        visible: false
        onButtonClicked18: stackView.pop()
    }
}
