import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQml.Models 2.12
import ResourceProvider 1.0
import StyleConstants 1.0

ToolBar {
    id: root

    signal flightdataToolBarButtonClicked()
    signal runwayToolBarButtonClicked()
    signal fplToolBarButtonClicked()
    signal weatherToolBarButtonClicked()
    signal gridToolBarButtonClicked()
    signal searchToolBarButtonClicked()
    signal settingsToolBarButtonClicked()
    signal helpToolBarButtonClicked()

    height: 48
    palette.base: StyleConstants.lightBaseColor

    background: Rectangle {
        color: palette.base
    }

    RowLayout {
        id: _inspector
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 12

        Layout.alignment: Qt.AlignLeft
        spacing: StyleConstants.skyToolBarSpacing

        AirSituationPointerComboBox {
            id: _pointerComboBox
            model: ListModel {
                id: _pointerComboBoxModel
                Component.onCompleted: {
                            append({ "text": "Cursor", "img": Resources.icons.pointer });
                            append({ "text": "Text", "img": Resources.icons.text });
                            append({ "text": "Line", "img": Resources.icons.line });
                            append({ "text": "Circle", "img": Resources.icons.circle });
                            append({ "text": "Polygon", "img": Resources.icons.polygon });
                }
            }
        }

        AirSituationLayersCheckBox {
            id: _layersCheckBox
        }

        AirSituationRulerDialogButton {
            id: _rulerDialogButton
        }
    }

    RowLayout {
        id: _functions
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 12

        Layout.alignment: Qt.AlignRight
        spacing: StyleConstants.skyToolBarSpacing

        AirSituationToolBarIconButton {
            id: _flightdataToolBarButton
            icon.source: Resources.icons.flightdata
            onClicked: { flightdataToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _runwayToolBarButton
            icon.source: Resources.icons.runway
            onClicked: { runwayToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _fplToolBarButton
            icon.source: Resources.icons.fpl
            onClicked: { fplToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _weatherToolBarButton
            icon.source: Resources.icons.weather
            onClicked: { weatherToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _gridToolBarButton
            icon.source: Resources.icons.grid
            onClicked: { gridToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _searchToolBarButton
            icon.source: Resources.icons.search
            onClicked: { searchToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _settingsToolBarButton
            icon.source: Resources.icons.settings
            onClicked: { settingsToolBarButtonClicked() }
        }

        AirSituationToolBarIconButton {
            id: _helpToolBarButton
            icon.source: Resources.icons.help
            onClicked: { helpToolBarButtonClicked() }
        }
    }
}
