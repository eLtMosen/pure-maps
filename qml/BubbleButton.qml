/* -*- coding: utf-8-unix -*-
 *
 * Copyright (C) 2015 Osmo Salomaa
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
import Sailfish.Silica 1.0

Rectangle {
    id: button
    color: "#bbffffff"
    height: label.height + 0.75*Theme.paddingLarge
    radius: Theme.fontSizeSmall/4
    width: label.width + Theme.paddingLarge
    property string text: ""
    signal clicked()
    Label {
        id: label
        anchors.centerIn: parent
        color: "black"
        font.pixelSize: Theme.fontSizeExtraSmall
        text: parent.text
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            button.color = Theme.highlightColor;
            timer.restart();
            button.clicked();
        }
    }
    Timer {
        id: timer
        interval: 3000
        repeat: false
        onTriggered: button.color = "#bbffffff";
    }
}