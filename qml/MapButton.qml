/* -*- coding: utf-8-unix -*-
 *
 * Copyright (C) 2019 Rinigus, 2019 Purism SPC
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

import QtQuick 2.0
import QtGraphicalEffects 1.0
import "platform"

Item {
    id: item
    height: bg.height + 2*app.styler.themePaddingLarge
    width: bg.width + 2*app.styler.themePaddingLarge

    property alias  iconColorize: button.iconColorize
    property alias  iconHeight: button.iconHeight
    property alias  iconName: button.iconName
    property alias  iconRotation: button.iconRotation
    property alias  iconSource: button.iconSource
    property alias  iconWidth: button.iconWidth
    property alias  pressed: mouse.pressed

    signal clicked

    Rectangle {
        id: bg
        anchors.centerIn: parent
        color: item.pressed ? app.styler.itemPressed : app.styler.itemBg
        height: wh
        layer.enabled: item.pressed ? false : true
        layer.effect: DropShadow {
            color: app.styler.shadowColor
            opacity: app.styler.shadowOpacity
            radius: app.styler.shadowRadius
            samples: 1 + radius*2
        }
        radius: wh/2
        width: wh

        property real wh: Math.max(button.height, button.width) * 1.42*(1 + 0.2)

        IconButtonPL {
            id: button
            anchors.centerIn: parent
            padding: 0
            onClicked: item.clicked()
        }
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        onClicked: item.clicked()
    }
}
