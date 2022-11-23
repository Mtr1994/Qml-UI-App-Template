import QtQuick 2.15
import QtQuick.Controls 1.4

Item {

    TreeView {
        id: treeView
        anchors.fill: parent
        anchors.margins: AppFontSize.smallRadius

        TableViewColumn { title: "Name"; role: "name" }

         headerDelegate: Rectangle {
             implicitWidth: parent.width / treeView.columnCount
             implicitHeight: AppFontSize.fontWidth * 2

             Text {
                 text: "名称"
                 anchors.fill: parent
                 font.family: "Microsoft YaHei"
                 font.pointSize: AppFontSize.pointSize + 1
                 renderType: Text.NativeRendering
                 verticalAlignment: Text.AlignVCenter
                 leftPadding: AppFontSize.fontWidth
                 font.bold: true
             }

             Rectangle {anchors.bottom: parent.bottom; color: "#f7f7f9"; width: parent.width; height: 1}
         }

         itemDelegate: Rectangle {
            implicitWidth: parent.width / treeView.columnCount
            implicitHeight: AppFontSize.fontWidth * 2
            color: "#fefefe"

            Text {
               text: "不知道"
               anchors.fill: parent
               font.family: "Microsoft YaHei"
               font.pointSize: AppFontSize.pointSize
               renderType: Text.NativeRendering
               verticalAlignment: Text.AlignVCenter
               leftPadding: AppFontSize.fontWidth
               color: Qt.rgba(0, 0, 0, 0.85)
            }

            Rectangle {anchors.bottom: parent.bottom; color: "#f7f7f9"; width: parent.width; height: 1}

            MouseArea {
               anchors.fill: parent
               hoverEnabled: true
               onEntered: {
                  // tableView.hoverIndex = index % modelTableView.rowCount
               }
               onExited: {
                   //tableView.hoverIndex = -1
               }
               onClicked: {
                  // tableView.selectIndex = index % modelTableView.rowCount
               }
            }
         }

         model: ListModel {
             ListElement { name: "苹果"; cost: 4.00 }
             ListElement { name: "橙子"; cost: 3.25 }
             ListElement { name: "香蕉"; cost: 2.45 }
             ListElement { name: "火龙果"; cost: 2.65 }
             ListElement { name: "葡萄"; cost: 2.78 }
             ListElement { name: "离子"; cost: 2.45 }
             ListElement { name: "柚子"; cost: 2.65 }
             ListElement { name: "哈密瓜"; cost: 2.78 }
         }
    }
}
