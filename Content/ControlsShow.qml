﻿import QtQuick 2.15
import QtQuick.Controls 2.5

import Qt.labs.qmlmodels 1.0

Item {
    id: itemControls

    Rectangle {
        id : rectControls
        color: "#ffffff"
        anchors.fill: parent
        anchors.margins: AppFontSize.fontWidth
        radius: AppFontSize.fontWidth

        Flow {
            id: flowMain
            spacing: AppFontSize.fontWidth * 3
            padding: AppFontSize.fontWidth
            anchors.fill: parent

            Button {
                id :btnOk
                text: "确认"
                width: AppFontSize.fontWidth * 6
                height: AppFontSize.fontWidth * 2

                background: Rectangle {
                    color: btnOk.down ? "#096dd9" : (btnOk.hovered ? "#40a9ff" : "#1890FF")
                    border.width: 1
                    border.color: btnOk.down ? "#096dd9" : (btnOk.hovered ? "#40a9ff" : "#1890FF")
                    radius: AppFontSize.smallRadius
                }

                contentItem: Text {
                    text: btnOk.text
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    color: Qt.rgba(1, 1, 1, 1)
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    renderType: TextInput.NativeRendering
                }
            }

            Button {
                id: btnCancel
                text: "取消"
                width: AppFontSize.fontWidth * 6
                height: AppFontSize.fontWidth * 2

                background: Rectangle {
                    color: btnCancel.down ? "#f3f4f5" : (btnCancel.hovered ? "#fefefe" : "#f3f4f5")
                    border.width: 1
                    border.color: "#dcdfe6"
                    radius: AppFontSize.smallRadius
                }

                contentItem: Text {
                    text: btnCancel.text
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    color: "#666666"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    renderType: TextInput.NativeRendering
                }
            }

            Rectangle {
                id: rectInputText
                width: AppFontSize.fontWidth * 12
                height: AppFontSize.fontWidth * 2
                border.width: 1
                border.color: "#d0d0d0"
                radius: AppFontSize.smallRadius
                antialiasing: true

                TextInput {
                    id: inputName
                    anchors.fill: parent
                    text: "请输入你的名字"
                    verticalAlignment: Qt.AlignVCenter
                    renderType: TextInput.NativeRendering
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    leftPadding: AppFontSize.fontWidth
                    color: "#666666"
                    selectByMouse: true
                    selectedTextColor: "#fefefe"
                    selectionColor: "#fc9153"
                }
            }

            // 复选框
            CheckBox {
                id: cbPriority
                text: "启动设备"
                checked: true
                width: AppFontSize.fontWidth * 6
                height: AppFontSize.fontWidth * 2

                indicator: Rectangle {
                    implicitWidth: AppFontSize.fontWidth
                    implicitHeight: AppFontSize.fontWidth
                    anchors.verticalCenter: cbPriority.verticalCenter
                    radius: AppFontSize.smallRadius
                    border.color: "#d0d0d0"
                    antialiasing: true

                    Rectangle {
                        width: AppFontSize.fontWidth - AppFontSize.smallRadius * 2
                        height: AppFontSize.fontWidth - AppFontSize.smallRadius * 2
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        radius: AppFontSize.smallRadius
                        color: cbPriority.down ? "#aa1890FF" : "#1890FF"
                        visible: cbPriority.checked
                        antialiasing: true
                    }
                }

                contentItem: Text {
                    text: cbPriority.text
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    opacity: enabled ? 1.0 : 0.3
                    color: cbPriority.down ? "#666666" : "#666666"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: cbPriority.indicator.width + cbPriority.spacing
                    renderType: TextInput.NativeRendering
                }
            }

            // 单选框
            RadioButton {
                id: rbPriorityA
                text: "单选框 A"
                checked: true
                width: AppFontSize.fontWidth * 6
                height: AppFontSize.fontWidth * 2

                indicator: Rectangle {
                    implicitWidth: AppFontSize.fontWidth
                    implicitHeight: AppFontSize.fontWidth
                    anchors.verticalCenter: rbPriorityA.verticalCenter
                    radius: AppFontSize.fontWidth * 0.5
                    border.color: "#d0d0d0"
                    antialiasing: true

                    Rectangle {
                        width: AppFontSize.fontWidth - AppFontSize.smallRadius * 2
                        height: AppFontSize.fontWidth - AppFontSize.smallRadius * 2
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        radius: width * 0.5
                        color: rbPriorityA.down ? "#aa1890FF" : "#1890FF"
                        visible: rbPriorityA.checked
                        antialiasing: true
                    }
                }

                contentItem: Text {
                    text: rbPriorityA.text
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    opacity: enabled ? 1.0 : 0.3
                    color: rbPriorityA.down ? "#666666" : "#666666"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: rbPriorityA.indicator.width + rbPriorityA.spacing
                    renderType: TextInput.NativeRendering
                }
            }

            RadioButton {
                id: rbPriorityB
                text: "单选框 B"
                checked: false
                width: AppFontSize.fontWidth * 6
                height: AppFontSize.fontWidth * 2

                indicator: Rectangle {
                    implicitWidth: AppFontSize.fontWidth
                    implicitHeight: AppFontSize.fontWidth
                    anchors.verticalCenter: rbPriorityB.verticalCenter
                    radius: AppFontSize.fontWidth * 0.5
                    border.color: "#d0d0d0"
                    antialiasing: true

                    Rectangle {
                        width: AppFontSize.fontWidth - AppFontSize.smallRadius * 2
                        height: AppFontSize.fontWidth - AppFontSize.smallRadius * 2
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        radius: width * 0.5
                        color: rbPriorityB.down ? "#aa1890FF" : "#1890FF"
                        visible: rbPriorityB.checked
                        antialiasing: true
                    }
                }

                contentItem: Text {
                    text: rbPriorityB.text
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    opacity: enabled ? 1.0 : 0.3
                    color: rbPriorityB.down ? "#666666" : "#666666"
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: rbPriorityB.indicator.width + rbPriorityB.spacing
                    renderType: TextInput.NativeRendering
                }
            }

            // 转换器
            Switch {
                 id: switchDevice
                 width: AppFontSize.fontWidth * 3.6
                 height: AppFontSize.fontWidth * 2

                 indicator: Rectangle {
                     width: parent.width
                     height: AppFontSize.fontWidth * 1.6
                     anchors.verticalCenter: parent.verticalCenter
                     radius: parent.width * 0.5
                     color: switchDevice.checked ? "#1890ff" : Qt.rgba(0, 0, 0, 0.25)

                     // 圆环
                     Rectangle {
                         anchors.verticalCenter: parent.verticalCenter
                         x: switchDevice.checked ? parent.width - width - 2 : 2
                         width: parent.height - 4
                         height: parent.height - 4
                         radius: width * 0.5
                         color: switchDevice.down ? "#cccccc" : "#ffffff"
                     }
                 }
             }

            // 自定义进度条
            ProgressBar {
                id: progressBar
                from : 0
                to: 100
                value: 36
                width: AppFontSize.fontWidth * 12
                height: AppFontSize.fontWidth * 2

                // 背景
                background: Rectangle {
                    implicitWidth: parent.width
                    height: AppFontSize.fontWidth
                    color: "#e6e6e6"
                    radius: parent.height * 0.6
                    anchors.verticalCenter: parent.verticalCenter
                }

                // 进度
                contentItem: Item {
                    implicitWidth: parent.width
                    implicitHeight: AppFontSize.fontWidth

                    Rectangle {
                        width: progressBar.visualPosition * parent.width
                        height: AppFontSize.fontWidth
                        radius: parent.height * 0.5
                        color: "#1890ff"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                // 文本显示
                Label {
                    id: prograssLabel
                    anchors.fill: parent
                    color: "White"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment : Text.AlignVCenter
                    z: 100
                    text: "36%"
                    renderType: TextInput.NativeRendering
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                }

                onValueChanged: {
                    prograssLabel.text = value.toString() + "%"
                }
            }

            // 下拉框模
            // 也可以做成上拉
            ComboBox {
                id: comboBox
                width: AppFontSize.fontWidth * 12
                height: AppFontSize.fontWidth * 2
                textRole: "name"
                down: false
                model: ListModel {
                    id: modelData
                    ListElement { name: "苹果"; cost: 4.00 }
                    ListElement { name: "橙子"; cost: 3.25 }
                    ListElement { name: "香蕉"; cost: 2.45 }
                    ListElement { name: "火龙果"; cost: 2.65 }
                    ListElement { name: "葡萄"; cost: 2.78 }
                    ListElement { name: "香蕉"; cost: 2.45 }
                    ListElement { name: "火龙果"; cost: 2.65 }
                    ListElement { name: "葡萄"; cost: 2.78 }
                }
                onActivated: {
                    console.info("index:" + index + ", text:" + comboBox.textAt(index))
                    var item = comboBox.model.get(index)
                    console.info("name:" + item.name + ", cost:" + item.cost)
                }
                background: Rectangle {
                    width: parent.width
                    height: parent.height
                    color: Qt.rgba(1, 1, 1, 1)
                    border.width: 1
                    border.color: "#d0d0d0"
                    radius: AppFontSize.smallRadius
                }

                contentItem: Text {
                    text: comboBox.currentText
                    font.family: "Microsoft YaHei"
                    font.pointSize: AppFontSize.pointSize
                    color: "#666666"
                    leftPadding: parent.height * 0.36
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    renderType: TextInput.NativeRendering
                }

                indicator: Rectangle {
                    width: AppFontSize.smallRadius * 3
                    height: AppFontSize.smallRadius * 3
                    radius: height * 0.5
                    color: comboBox.hovered ? "#fc9153" : "#1890ff"
                    anchors.right: parent.right
                    anchors.rightMargin: AppFontSize.smallRadius * 3
                    anchors.verticalCenter: parent.verticalCenter
                }

                delegate: ItemDelegate {
                    width: parent.width
                    height: AppFontSize.fontWidth * 2
                    // 行字体样式
                    contentItem: Text {
                        text: name
                        elide: Text.ElideRight
                        verticalAlignment: Text.AlignVCenter
                        renderType: Text.NativeRendering
                        font.family: "Microsoft YaHei"
                        font.pointSize: AppFontSize.pointSize
                        font.weight: comboBox.currentIndex === index ? Font.DemiBold : Font.Normal
                        color: "#666666"
                    }

                    palette.text: comboBox.palette.text
                    palette.highlightedText: comboBox.palette.highlightedText
                    highlighted: comboBox.highlightedIndex === index
                    hoverEnabled: comboBox.hoverEnabled
                }

                popup: Popup {
                    y: comboBox.height + AppFontSize.smallRadius * 2
                    width: comboBox.width;
                    height: AppFontSize.fontWidth * 12;

                    contentItem: ListView {
                        clip: true
                        anchors.fill: parent
                        anchors.margins: AppFontSize.smallRadius
                        //禁止滑动
                        // interactive: false;
                        //禁用橡皮筋效果
                        boundsBehavior: Flickable.DragOverBounds

                        implicitHeight: contentHeight
                        model: comboBox.delegateModel
                        currentIndex: comboBox.highlightedIndex
                        highlightMoveDuration: 0
                    }

                    background: Rectangle {
                        color: comboBox.pressed ? "#EEEFF7" : comboBox.palette.window
                        border.width: 1
                        border.color: "#d0d0d0"
                        radius: AppFontSize.smallRadius
                    }
                }
            }

            // 滑块
            Slider {
                id: sliderVolume
                width: AppFontSize.fontWidth * 12
                height: AppFontSize.fontWidth * 2
                from: 1
                to: 100
                value: 25
                stepSize: 1
                snapMode: Slider.SnapAlways

                onValueChanged: {
                    // do something
                }

                background: Rectangle {
                    x: sliderVolume.leftPadding
                    y: sliderVolume.topPadding + sliderVolume.availableHeight / 2 - height / 2
                    implicitWidth: parent.width
                    implicitHeight: AppFontSize.smallRadius * 1.2
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: sliderVolume.availableWidth - AppFontSize.smallRadius * 2
                    height: implicitHeight
                    radius: height * 0.5
                    color: "#bdbebf"

                    Rectangle {
                     width: sliderVolume.visualPosition * parent.width
                     height: parent.height
                     color: "#21be2b"
                     radius: height * 0.5
                    }
                 }

                handle: Rectangle {
                    width: AppFontSize.fontWidth
                    height: AppFontSize.fontWidth
                    x: sliderVolume.leftPadding + sliderVolume.visualPosition * (sliderVolume.availableWidth - width)
                    y: sliderVolume.topPadding + sliderVolume.availableHeight / 2 - height / 2
                    color: "#fefefe"
                    border.width: 1
                    border.color: "#d0d0d0"
                    anchors.verticalCenter: parent.verticalCenter
                    radius: width * 0.5
                }
            }

            // 输入框，可以加入密码格式、限制数值范围等回显方式
            TextField {
                placeholderText: qsTr("请输入密码")
                echoMode: TextInput.Password
                text: "123456"
                selectByMouse: true
                selectedTextColor: "#fefefe"
                selectionColor: "#fc9153"
                width: AppFontSize.fontWidth * 10
                height: AppFontSize.fontWidth * 2
                renderType: TextField.NativeRendering

                font.family: "Microsoft YaHei"
                font.pointSize: AppFontSize.pointSize
                color: "#666666"
                leftPadding: AppFontSize.smallRadius * 2
                verticalAlignment: Text.AlignVCenter

                background: Rectangle {
                    width: parent.width
                    height: parent.height
                    radius: AppFontSize.smallRadius
                    color: "#fefefe"
                    border.width: 1
                    border.color: "#d0d0d0"
                }
            }

            // 富文本框
            TextArea {
                id: taMessage
                text: "随着新皮肤上架免费使用皮肤池，以下皮肤将从免费使用皮肤池中下架。在2022年11月18日10点前加入福星计划的召唤师，仍可以免费使用这些皮肤，之后新加入福星计划的召唤师将不可使用。同时在2022年11月18日10点后拥有这些皮肤也不再能够将优惠券兑换成点券。"
                width: AppFontSize.fontWidth * 16
                height: AppFontSize.fontWidth * 12
                renderType: TextField.NativeRendering
                font.family: "Microsoft YaHei"
                font.pointSize: AppFontSize.pointSize
                color: "#666666"
                padding: AppFontSize.smallRadius * 2
                selectByMouse: true
                selectedTextColor: "#fefefe"
                selectionColor: "#fc9153"
                wrapMode: TextArea.WordWrap

                // 当按下 Return/Enter 键或者文本框失去焦点时触发
                onEditingFinished: {
                    console.info("text area editing finished")
                }

                // 每当文本变化时触发
                onTextChanged: {
                    console.info("text area text changed")
                }

                background: Rectangle {
                    anchors.fill: parent
                    border.width: 1
                    border.color: "#d0d0d0"
                    radius: AppFontSize.smallRadius
                }
            }

            // 列表
            Rectangle {
                id: rectListView
                width: AppFontSize.fontWidth * 16
                height: AppFontSize.fontWidth * 24
                border.width: 1
                border.color: "#d0d0d0"
                radius: AppFontSize.smallRadius

                ListView {
                    id: listview
                    anchors.fill: parent
                    anchors.margins: AppFontSize.smallRadius * 2
                    clip: true
                    highlightMoveDuration: 240
                    interactive: false

                    model: ListModel {
                        id: model
                        ListElement { name: "苹果"; cost: 4.00 }
                        ListElement { name: "橙子"; cost: 3.25 }
                        ListElement { name: "香蕉"; cost: 2.45 }
                        ListElement { name: "火龙"; cost: 2.65 }
                        ListElement { name: "葡萄"; cost: 2.78 }
                        ListElement { name: "香蕉"; cost: 2.45 }
                        ListElement { name: "东果"; cost: 2.65 }
                        ListElement { name: "葡萄"; cost: 2.78 }
                    }

                    delegate: ItemDelegate {
                        width: parent.width
                        height: AppFontSize.fontWidth * 2
                        hoverEnabled: listview.hoverEnabled

                        contentItem: Text {
                            text: name
                            elide: Text.ElideRight
                            verticalAlignment: Text.AlignVCenter
                            renderType: Text.NativeRendering
                            font.family: "Microsoft YaHei"
                            font.pointSize: AppFontSize.pointSize
                            color: (index == listview.currentIndex) ? "#fefefe" : "#666666"
                        }

                        background: Rectangle {
                            width: parent.width
                            height: parent.height
                            border.width: 0
                            color: (index == listview.currentIndex) ? "#1890ff" : hovered ? "#f3f4f5" : "#fefefe"
                            radius: AppFontSize.smallRadius
                        }

                        Rectangle {
                            id: rectStatus
                            width: AppFontSize.smallRadius * 3
                            height: width
                            anchors.right: parent.right
                            anchors.rightMargin: AppFontSize.smallRadius * 2
                            anchors.verticalCenter: parent.verticalCenter
                            color: "#fc9153"
                            radius: height * 0.5
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                listview.currentIndex = index
                            }
                        }
                    }
                }
            }

            // 表格
            Rectangle {
                id: rectTableview
                width: AppFontSize.fontWidth * 32
                height: AppFontSize.fontWidth * 10
                border.width: 1
                border.color: "#d0d0d0"
                radius: AppFontSize.smallRadius

                TableView {
                    anchors.fill: parent
                    columnSpacing: 1
                    rowSpacing: 1
                    boundsBehavior: Flickable.StopAtBounds

                    model: TableModel {
                        TableModelColumn { display: "checked" }
                        TableModelColumn { display: "amount" }
                        TableModelColumn { display: "fruitType" }
                        TableModelColumn { display: "fruitName" }
                        TableModelColumn { display: "fruitPrice" }

                        // Each row is one type of fruit that can be ordered
                        rows: [
                            {
                                // Each property is one cell/column.
                                checked: false,
                                amount: 1,
                                fruitType: "Apple",
                                fruitName: "Granny Smith",
                                fruitPrice: 1.50
                            },
                            {
                                checked: true,
                                amount: 4,
                                fruitType: "Orange",
                                fruitName: "Navel",
                                fruitPrice: 2.50
                            },
                            {
                                checked: false,
                                amount: 1,
                                fruitType: "Banana",
                                fruitName: "Cavendish",
                                fruitPrice: 3.50
                            }
                        ]
                    }
                    delegate: DelegateChooser {
                        DelegateChoice {
                            column: 0
                            delegate: CheckBox {
                                checked: model.display
                                onToggled: model.display = checked
                            }
                        }
                        DelegateChoice {
                            column: 1
                            delegate: SpinBox {
                                value: model.display
                                onValueModified: model.display = value
                            }
                        }
                        DelegateChoice {
                            delegate: TextField {
                                text: model.display
                                selectByMouse: true
                                implicitWidth: 140
                                onAccepted: model.display = text
                            }
                        }
                    }
                }
            }
        }
    }
}
