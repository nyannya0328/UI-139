//
//  TodayViewModel.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

class TodayViewModel: ObservableObject {
    @Published var selectedItem = TodayItem(title: "", category: "", logo: "", overlay: "", contentimage: "")
        @Published var show = false
}

