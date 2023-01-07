import QtQuick 2.15
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQml.Models 2.15

Item {

    TreeView {
        id: treeView
        anchors.fill: parent
        anchors.margins: AppFontSize.smallRadius
        frameVisible: false
        //headerVisible: false

        property int selectIndex: -1
        property int hoverIndex: -1

        TableViewColumn { title: "江夏区第一中学"; role: "display" }

        style: TreeViewStyle {
            // 表头
            headerDelegate: Rectangle {
                implicitWidth: parent.width / treeView.columnCount
                implicitHeight: AppFontSize.fontWidth * 2

                Text {
                    text: styleData.value
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

            // 显示文本
            itemDelegate: Rectangle {
               implicitWidth: parent.width / treeView.columnCount
               implicitHeight: AppFontSize.fontWidth * 2
               color: (styleData.row === treeView.selectIndex) ? "#1890ff": "#fefefe"

               Text {
                  text: styleData.value
                  anchors.fill: parent
                  font.family: "Microsoft YaHei"
                  font.pointSize: AppFontSize.pointSize
                  renderType: Text.NativeRendering
                  verticalAlignment: Text.AlignVCenter
                  color: (styleData.row === treeView.selectIndex) ? "#fefefe" : Qt.rgba(0, 0, 0, 0.85)
               }

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
                     treeView.selectIndex = styleData.row
                  }
               }
            }

            // 控制行高，只能用 width 和 height，不能隐式指定
            rowDelegate : Rectangle {
                width: parent.width
                height: AppFontSize.fontWidth * 2
                color: (styleData.row === treeView.selectIndex) ? "#1890ff": "#fefefe"
            }

            // 箭头图标
            branchDelegate: Rectangle {
                width: AppFontSize.fontWidth * 0.6
                height: AppFontSize.fontWidth * 0.6
                color: "transparent"

                property bool selected: styleData.row === treeView.selectIndex
                property string iconRightUrl: "qrc:/Resource/image/tree_view_right.svg"
                property string iconDownUrl: "qrc:/Resource/image/tree_view_down.svg"
                property string iconRightSelectUrl: "qrc:/Resource/image/tree_view_right_select.svg"
                property string iconDownSelectUrl: "qrc:/Resource/image/tree_view_down_select.svg"

                Image {
                    source: styleData.isExpanded ? (selected ? iconDownSelectUrl: iconDownUrl) : (selected ? iconRightSelectUrl: iconRightUrl)
                    sourceSize.width: parent.width
                    sourceSize.height: parent.width
                }
            }
        }

        model: treeModel
    }

}
