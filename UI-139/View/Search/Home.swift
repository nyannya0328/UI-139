//
//  Home.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct Home: View {
    @Binding var fileteritems : [Item]
    var body: some View {
        ScrollView{
            
            VStack(spacing:15){
                
                
                ForEach(fileteritems){item in
                    
                    
                    CardView(item: item)
                }
            }
            .padding()
            
            
        }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
