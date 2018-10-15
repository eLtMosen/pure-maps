/* -*- coding: utf-8-unix -*-
 *
 * Copyright (C) 2018 Rinigus
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    height: childrenRect.height
    width: parent.width

    property string description
    property alias  label: lab.text
    property alias  maximumValue: val.to
    property alias  minimumValue: val.from
    property alias  stepSize: val.stepSize
    property alias  value: val.value
    property string valueText

    Label {
        id: lab
        anchors.left: parent.left
        anchors.top: parent.top
    }

    Slider {
        id: val
        anchors.left: lab.right
        anchors.leftMargin: app.styler.themePaddingMedium
        anchors.verticalCenter: lab.verticalCenter
        font.pixelSize: app.styler.themeFontSizeMedium
    }

    Label {
        id: desc
        anchors.left: lab.right
        anchors.right: parent.right
        anchors.top: val.bottom
        anchors.topMargin: text ? app.styler.themePaddingMedium : 0
        font.pixelSize: app.styler.themeFontSizeSmall
        height: text ? implicitHeight : 0
        text: (valueText ? "[ " + valueText + " ] " : "") + description
        visible: text
        wrapMode: Text.WordWrap
    }
}
