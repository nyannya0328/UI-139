//
//  TabBar.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct TabBar: View {
    @Namespace var animation
    @StateObject var model = TodayViewModel()
    var body: some View {
        ZStack{
            
            TabView{
                
               
                Today(animation: animation)
                    .environmentObject(model)
                        .tabItem{
                        Image("today")
                           
                            Text("Today")
                        
                        }
                    
                   
                    
                    Text("B")
                        .tabItem{
                        Image("apps")
                            Text("Apps")
                        
                        }
                    
                    
                    Text("C")
                        .tabItem{
                        Image("games")
                            Text("Games")
                        
                        }
                    
                    
                    Text("D")
                        .tabItem{
                        Image("search")
                            Text("Search")
                        
                        }
                    
                
                
                
                
                
            }
            .opacity(model.show ? 0 : 1)
            if model.show{
                
                DetatilView(model: model, animation: animation)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
       
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
