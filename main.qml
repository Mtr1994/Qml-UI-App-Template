import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "transparent";
    title: "文本标记语言程序模板"
    flags: Qt.FramelessWindowHint | Qt.WindowSystemMenuHint | Qt.Window;

    Rectangle {
        id: rectWindowBase
        color: "#f0f0f0"
        radius: 9
        anchors.fill: parent
        border.width: 1.5
        border.color: "#d0d0d0"

        MouseArea {
            id: maWindows
            anchors.fill: parent
            hoverEnabled: true

            property bool mousePressed: false
            property point mousePosition: Qt.point(0, 0)
            onPressed: {
                mousePosition.x = mouse.x;
                mousePosition.y = mouse.y;
            }
            onPositionChanged: {
                if (!containsPress) return;

                window.x = window.x + mouse.x - mousePosition.x;
                window.y = window.y + mouse.y - mousePosition.y;
            }
            onDoubleClicked: {
                close()
            }
        }

        Rectangle {
            id: rectLeftBase
            color: "#fefefe"
            anchors.left: rectWindowBase.left
            anchors.leftMargin: 9
            anchors.top: rectWindowBase.top
            anchors.topMargin: 9;
            radius: 9
            width: parent.width * 0.3
            height: parent.height - 18
        }

        Rectangle {
            id: rectRightBase
            color: "#fefefe"
            anchors.right: rectWindowBase.right
            anchors.rightMargin: 9
            anchors.left: rectLeftBase.right
            anchors.leftMargin: 9
            anchors.top: rectWindowBase.top
            anchors.topMargin: 9;
            radius: 9
            width: parent.width * 0.7 - 18
            height: parent.height - 18
        }
    }
}
