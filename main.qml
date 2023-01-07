import QtQuick 2.15
import QtQuick.Window 2.15

import QtQuick.Controls 2.15

import "Content"

Window {
    id: window
    width: AppFontSize.fontWidth * 84
    height: AppFontSize.fontWidth * 84 * 0.618
    minimumWidth: AppFontSize.fontWidth * 84
    minimumHeight: AppFontSize.fontWidth * 84 * 0.618
    visible: true
    color: "#000000"
    title: "文本标记语言程序模板"

    Rectangle {
        id: rectWindowBase
        color: "#f0f0f0"
        anchors.fill: parent

        MouseArea {
            id: maWindows
            anchors.fill: parent
            hoverEnabled: true
        }

        Rectangle {
            id: rectLeftBase
            color: "#fefefe"
            anchors.left: rectWindowBase.left
            anchors.top: rectWindowBase.top
            anchors.bottom: rectWindowBase.bottom
            anchors.margins: AppFontSize.fontWidth
            radius: AppFontSize.fontWidth
            width: AppFontSize.fontWidth * 18

            // 列表
            ListView {
                id: listview
                anchors.fill: parent
                anchors.margins: AppFontSize.smallRadius * 4
                clip: true
                interactive: true
                currentIndex: -1
                spacing: AppFontSize.smallRadius

                model: ListModel {
                    id: model
                    ListElement { name: "按钮"; type: "Button" }
                    ListElement { name: "单文本框"; type: "TextInput" }
                    ListElement { name: "多选框"; type: "CheckBox" }
                    ListElement { name: "单选框"; type: "RadioButton" }
                    ListElement { name: "状态按钮"; type: "Switch" }
                    ListElement { name: "进度条"; type: "ProgressBar" }
                    ListElement { name: "下拉框"; type: "ComboBox" }
                    ListElement { name: "滑块"; type: "Slider" }
                    ListElement { name: "输入框"; type: "TextField" }
                    ListElement { name: "富文本框"; type: "TextArea" }
                    ListElement { name: "表格"; type: "TableView" }
                    ListElement { name: "树状视图"; type: "TreeView" }
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
                        color: (index === listview.currentIndex) ? "#fefefe" : "#666666"
                    }

                    background: Rectangle {
                        width: parent.width
                        height: parent.height
                        border.width: 0
                        color: (index === listview.currentIndex) ? "#1890ff" : hovered ? "#f3f4f5" : "#fefefe"
                        radius: AppFontSize.smallRadius
                    }

                    Rectangle {
                        id: rectStatus
                        width: AppFontSize.smallRadius * 3
                        height: width
                        anchors.right: parent.right
                        anchors.rightMargin: AppFontSize.smallRadius * 2
                        anchors.verticalCenter: parent.verticalCenter
                        color: (index === listview.currentIndex) ? "#fc9153" : hovered ? "#fc9153" : "#55fc9153"
                        radius: height * 0.5
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            listview.currentIndex = index

                            // 发送选中信号
                            AppSignal.sgl_left_menu_select_change(type);
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectRightBase
            color: "#fefefe"
            anchors.right: rectWindowBase.right
            anchors.left: rectLeftBase.right
            anchors.top: rectWindowBase.top
            anchors.bottom: rectWindowBase.bottom
            anchors.margins: AppFontSize.fontWidth
            radius: AppFontSize.fontWidth

            ControlsShow {
                id: controlsShow
                anchors.fill: parent
            }
        }

    }
}
