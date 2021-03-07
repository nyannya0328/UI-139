//
//  TodayItem.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct TodayItem: Identifiable {
    var id = UUID().uuidString
    var title : String
    var category : String
    var logo : String
    var overlay : String
    var contentimage : String
}

var Todayitems = [

    TodayItem(title: "ワン！", category: "Dog", logo: "Mac食べたい", overlay: "吾輩は犬である", contentimage: "g1"),
    TodayItem(title: "My way", category: "View", logo: "Go throught my way", overlay: "貫く", contentimage: "g2")


]
