pragma Singleton
import QtQuick 2.12
import QtQuick.Window 2.12

QtObject {
    readonly property real goldenRatio: 1.61

    //forms colors
    readonly property color backgroundColor: "#000000"
    readonly property color lightBaseColor: "#343447"
    readonly property color darkBaseColor: "#22222e"
    readonly property color blackColor: "#000000"
    readonly property color highlightColor: "#9494ff"
    readonly property color frameColor: "#dddded"
    readonly property color formBorderBaseColor: "#cecedf"
    readonly property color formBorderActiveColor: "#9494ff"
    readonly property color accentColor: "#1573ff"

    readonly property color buttonBaseColor: "#343447"
    readonly property color buttonFocusColor: "#565671"
    readonly property color buttonActiveColor: "#0f0f1a"

    //lists colors
    readonly property color arrivalPinnedColor: "#23c60008"
    readonly property color arrivalUnpinnedColor: "#32c60008"
    readonly property color flightPlansPinnedColor: "#239ec600"
    readonly property color flightPlansUnpinnedColor: "#329ec600"
    readonly property color runwaysPinnedColor: "#2300c65b"
    readonly property color runwaysUnpinnedColor: "#3200c65b"
    readonly property color weatherPinnedColor: "#2300bac6"
    readonly property color weatherUnpinnedColor: "#3200bac6"
    readonly property color departurePinnedColor: "#230050ac"
    readonly property color departureUnpinnedColor: "#320050ac"
    readonly property color pushBackPinnedColor: "#2303a000"
    readonly property color pushBackUnpinnedColor: "#3203a000"
    readonly property color taxiPinnedColor: "#23b18000"
    readonly property color taxiUnpinnedColor: "#32b18000"
    readonly property color otherPinnedColor: "#23b600c6"
    readonly property color otherUnpinnedColor: "#32b600c6"

    //text colors
    readonly property color whiteTextColor: "#ffffff"
    readonly property color greyTextColor: "#cecedf"
    readonly property color buttonTextColor: "#ffffff"
    readonly property color captionTextColor: "#0f0f1a"
    readonly property color warningTextColor: "#ed002b"
    readonly property color placeHolderTextColor: "#ababb8"
    readonly property color h1TextColor: "#0f0f1a"

    //text sizes
    readonly property int h1TextPixelSize: 32
    readonly property int captionTextPixelSize: 16
    readonly property int menuTextPixelSize: 16
    readonly property int buttonTextPixelSize: 16

    readonly property real formRadius: 8
    readonly property real frameRadius: 12
    readonly property real toolBarFormsRadius: 4
    readonly property real toolBarPopupRadius: 12

    readonly property real minimumVerticalMargin: 40
    readonly property real mediumVerticalMargin: 60

    readonly property real minimumSpacing: 11
    readonly property real mediumSpacing: 24
    readonly property real maximumSpacing: 32

    readonly property real skyWindowHeaderSpacing: 34
    readonly property real skyToolBarSpacing: 24

    readonly property real formBorderBaseWidth: 1
    readonly property real formBorderActiveWidth: 2

    readonly property real formImplicitWidth: 200
    readonly property real formImplicitHeight: 48
}
