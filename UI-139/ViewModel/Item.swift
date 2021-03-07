//
//  Item.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var name : String
    var soucrce : String = "Apple"
}

var items = [
    Item(name: "Fantastic world"),
    Item(name: "Fog appearing on the beach"),
    Item(name: "Lakeside"),
    Item(name: "Mac食べたい"),
    Item(name: "Night view and fireworks"),
    Item(name: "Flowing waterfall"),
    Item(name: "Go throught my way"),
    Item(name: "Midnight factory"),
    Item(name: "Satairs in the station"),
    Item(name: "Towering moutain"),
    Item(name: "Train in the dark"),

]

