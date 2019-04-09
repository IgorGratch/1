import QtQuick 2.0
import QtQuick.Window 2.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1


Item{
Window{
    id: w2
    flags: Qt.FramelessWindowHint
    visible: true
    width: 1000
    height: 650
    x: (Screen.width - width) / 2
    y: (Screen.height - height) / 2

    MouseArea {
        anchors.fill: parent

        Image {
            anchors.fill: parent
            id: image2
            x: 0
            y: 0
            width: 1000
            height: 650
            clip: true
            source: "gray1.jpg"

            Text {
                id: text1
                x: 50
                y: 5
                width: 659
                height: 117
                text: qsTr("Страдание студента (Т_Т)")
                font.bold: true
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 36
            }

            Button {//выкл
                id: button1
                x: 965
                y: 5
                width: 30
                height: 30
                text: qsTr("")
                clip: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "exit.jpg" :
                                                  (control.hovered ? "exitact.jpg" : "exit.jpg")
                    }
                }

                onClicked: w3.show()
            }

            Button {//фоны
                id: button2
                x: 965
                y: 40
                width: 30
                height: 30
                text: qsTr("")
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "prop.jpg" :
                                                  (control.hovered ? "propact.jpg" : "prop.jpg")
                    }

                }
                onClicked:{
                    if(button4.visible == false){
                        text2.visible = true
                        button4.visible = true
                        button5.visible = true
                        button6.visible = true
                        str_2.focus = false
                    }
                    else{
                        text2.visible = false
                        button4.visible = false
                        button5.visible = false
                        button6.visible = false
                    }
                }
            }
            //вфбор фонаф
            Text {
                id: text2
                x: 847
                y: 220
                width: 235
                height: 69
                text: qsTr("ФОН")
                clip: true
                visible: false
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 18
            }

            Button {
                id: button4
                x: 935
                y: 250
                width: 60
                height: 30
                text: qsTr("Фон1")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit

                        source: control.pidor ? "baton.jpg" :
                                                (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }

                }
                onClicked: image2.source = "gray1.jpg"
            }

            Button {
                id: button5
                x: 935
                y: 285
                width: 60
                height: 30
                text: qsTr("Фон2")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }

                }
                onClicked: image2.source = "gray2.jpg"
            }

            Button {
                id: button6
                x: 935
                y: 320
                width: 60
                height: 30
                text: qsTr("Фон3")
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }

                }
                onClicked: image2.source = "gray3.jpg"
            }

            Button {//инфо
                id: button3
                x: 965
                y: 75
                width: 30
                height: 30
                text: qsTr("")
                clip: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "inf.jpg" :
                                                  (control.hovered ? "infact.jpg" : "inf.jpg")
                    }
                }
                onClicked:
                { if(image3.visible == false) {
                        image3.visible = true
                        button7.checked = false
                        button10.checked = false
                        button9.checked = false
                        str_2.visible = false
                        str_1.visible = false
                        str_3.visible = false
                        str_2.focus = false
                    }
                    else image3.visible = false
                }
            }
            //инфа
            Image {
                id: image3
                x: 95
                y: 130
                width: 800
                height: 500
                clip: false
                opacity: 1
                source: "win.jpg"
                visible: false


                TextEdit {
                    id: textEdit1
                    x: 80
                    y: 200
                    width: 470
                    height: 396
                    text: qsTr("Эта чудо-программа разработана студентами третьего курса Шелестом Жорой и Грачём Игорем \n
                                                        для лабораторных по ИиПУ\n\n\n\n\n\n\n\n\n\n\n
                                                       Простите нас, у нас лапки =(^.^)=")
                    clip: false
                    font.pixelSize: 12
                }
            }
//меню слева
//ЛАБА 2
            Button {//лаба 2
                id: button7
                x: 5
                y: 130
                width: 60
                height: 30
                text: qsTr("Лаба2")
                checked: false
                isDefault: false
                checkable: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }
                }
                onClicked:
                {
                    if(button7.checked == true){
                        image3.visible = false
                        button8.checked = false
                        button9.checked = false
                        str_1.visible = true
                        str_2.visible = false
                        str_3.visible = false

                        button10.visible = true
                        button11.visible = true
                        button12.visible = true
                        str_2.focus = false
                    }
                    else{
                        str_1.visible = false
                        button10.visible = false
                        button11.visible = false
                        button12.visible = false
                    }
                }

                Image {
                    id: str_1
                    x: 90
                    y: 0
                    width: 800
                    height: 500
                    visible: false
                    source: "win.jpg"

                    ScrollView{
                        y: 4
                        width: 795;
                        height: 490
                        TextEdit {
                            id: text4
                            objectName: "text4"
                            x: 44
                            y: 35
                            width: 700
                            height: 1000
                            clip: true
                            font.pixelSize: 12
                            wrapMode: TextEdit.Wrap
                            readOnly:true
                        }
                    }
                }
            }
//ЛАБА 3
            Button {
                id: button8
                x: 5
                y: 165
                width: 60
                height: 30
                text: qsTr("Лаба3")
                isDefault: false
                checked: false
                checkable: true
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }
                }
                onClicked: {
                    if(button8.checked == true){
                        button7.checked = false
                        image3.visible = false
                        button9.checked = false
                        str_2.visible = true
                        str_1.visible = false
                        str_3.visible = false
                        str_2.forceActiveFocus();
                    }
                    else
                        str_2.visible = false
                        button10.visible = false
                        button11.visible = false
                        button12.visible = false

                }

                Image {
                    id: str_2
                    x: 90
                    y: -35
                    width: 800
                    height: 500
                    visible: false
                    source: "win.jpg"
                    Keys.onPressed:
                    {
                        text333.text = event.key
                        if(text333.text == "16777235")
                        {
                            text3.visible = true
                            text3.text = "Нажмите клавишу любого индикатора клавиатуры"
                        }else
                        if(text333.text == "16777253")
                        {
                            onClicked: _lab3.buttonClicked()
                        }else
                        if(text333.text == "16777252")
                        {
                            onClicked: _lab3.buttonClicked()
                        }else
                        if(text333.text == "49")
                        {
                            onClicked: _lab3.buttonClicked1()
                        }else
                        if(text333.text == "16777249")
                        {
                            onClicked: _lab3.buttonClicked2()
                        }
                    }

                    Text {
                        id: text333
                        visible: false
                    }

                    TextEdit {
                        id: text3
                        objectName: "text3"
                        x: 46
                        y: 36
                        visible: false
                        width: 400
                        height: 400
                        clip: true
                        font.pixelSize: 12
                        wrapMode: TextEdit.Wrap
                        readOnly:true
                    }
                }
            }
//meminfo
            Button {
                id: button10
                x: 5
                y: 270
                width: 60
                height: 30
                text: qsTr("Mem")
                checked: false
                checkable: true
                isDefault: false
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }
                }
                onClicked:
                {
                    onClicked: _lab1.buttonClicked(0)
                }
            }
//cpuinfo
            Button {
                id: button11
                x: 5
                y: 305
                width: 60
                height: 30
                text: qsTr("Cpu")
                checked: false
                checkable: true
                isDefault: false
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }
                }
                onClicked:
                {
                     onClicked: _lab1.buttonClicked(1)
                }
            }
//devices
            Button {
                id: button12
                x: 5
                y: 340
                width: 60
                height: 30
                text: qsTr("Dev")
                checked: false
                checkable: true
                isDefault: false
                visible: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }
                }
                onClicked:
                {
                     onClicked: _lab1.buttonClicked(2)
                }
            }
//ЛАБА 4
            Button {
                id: button9
                x: 5
                y: 200
                width: 60
                height: 30
                text: qsTr("Лаба4")
                checked: false
                checkable: true
                isDefault: false
                style: ButtonStyle {
                    background: Image {
                        fillMode: Image.PreserveAspectFit
                        source: control.pressed ? "baton.jpg" :
                                                  (control.hovered ? "batonact.jpg" : "baton.jpg")
                    }
                }
                onClicked:
                {
                    if(button9.checked == true){
                        button7.checked = false
                        image3.visible = false
                        button8.checked = false
                        str_3.visible = true
                        str_2.visible = false
                        str_1.visible = false
                        onClicked: _lab4.buttonClicked(1)
                        str_2.focus = false
                    }
                    else
                        str_3.visible = false
                        button10.visible = false
                        button11.visible = false
                        button12.visible = false

                    }
                Image {
                    id: str_3
                    x: 90
                    y: -70
                    width: 800
                    height: 500
                    visible: false
                    source: "win.jpg"

                    TextEdit {
                        id: text41
                        objectName: "text41"
                        visible: false
                        text: qsTr("                                                Алгоритм записи в СОМ-порт

1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
3. В БА+3 занести 0 в 7-й бит для использования БА+0 в качестве буфера данных, а в 5, 4, 3 - биты контроля
- хх0 – отсутствие бита контроля по чётности/
- 001 – бит контроля формируется по четному паритету;
- 011 – бит контроля формируется по нечётному паритету;
- 101 – бит контроля равен 1;
- 111 – бит контроля равен 0.
4. Из БА+5 считываем 5-й бит. Если 1, то
5. В БА+0 заносим ASCII-код N-го символа данных, возвращаемся на п4, N++


                                                Алгоритм чтения из СОМ-порта

1. В БА+3 заносим 1000 0000 для использования БА+0 в качестве делителя частоты
2. В БА+0 занести делитель частоты (максимальная частота 115200/нужная частота)
3. В БА+3 занести 0 в 7-й бит для использования БА+0 в качестве буфера данных, а в 5, 4, 3 - биты контроля
- хх0 – отсутствие бита контроля по чётности/
- 001 – бит контроля формируется по четному паритету;
- 011 – бит контроля формируется по нечётному паритету;
- 101 – бит контроля равен 1;
- 111 – бит контроля равен 0.
4. Из БА+5 считываем 1-й бит. Если 1, то
5. Из БА+0 считываем ASCII-код N-го символа данных, возвращаемся на п4, N++

")
                        clip: false
                        font.pixelSize: 12
                    }

                    ScrollView{
                        y: 4
                        width: 795;
                        height: 490
                        TextEdit {
                            id: text5
                            objectName: "text5"
                            x: 44
                            y: 35
                            width: 700
                            height: 800
                            clip: true
                            font.pixelSize: 12
                            wrapMode: TextEdit.Wrap
                            readOnly:true
                       }

                    }
                }


            }





        }
    }
}

   Window {
        id: w3
        flags: Qt.FramelessWindowHint
        visible: false
        width: 400
        height: 100
        x: (Screen.width - width) / 2
        y: (Screen.height - height) / 2

        MouseArea {
            anchors.fill: parent

            Text {
                id: textw3
                x: 50
                y: 27
                width: 519
                height: 26
                text: qsTr("А может не нужно? (т_т)")
                font.pixelSize: 21
            }

            Button {
                id: buttonw3
                x: 30
                y: 65
                width: 130
                height: 27
                text: qsTr("Ну ладно (^_^)")
                onClicked: w3.hide()

            }

            Button {
                id: button2w3
                x: 240
                y: 65
                width: 130
                height: 27

                text: qsTr("Нужно (>_<)")
                onClicked: Qt.quit()
            }
        }
    }

}
