/* -*- coding: utf-8-unix -*-
 *
 * Copyright (C) 2018-2019 Rinigus, 2019 Purism SPC
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
import org.kde.kirigami 2.5 as Kirigami

Column {
    anchors.left: parent.left
    anchors.leftMargin: app.styler.themeHorizontalPageMargin
    anchors.right: parent.right
    anchors.rightMargin: app.styler.themeHorizontalPageMargin

    default property alias content: load
    property string        title

    Kirigami.Separator {
        width: parent.width
    }

    Kirigami.Separator {
        width: parent.width
    }

    Kirigami.Heading {
        id: txt
        height: visible ? implicitHeight  + app.styler.themePaddingLarge : 0
        horizontalAlignment: Text.AlignLeft
        level: 2
        width: parent.parent.width
        text: title
        visible: text
    }

    Loader {
        id: load
        width: parent.width
    }
}