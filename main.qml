import QtQuick 2.15
import QtQuick.Window 2.15

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
            width: AppFontSize.fontWidth * 20
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
