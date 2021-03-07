//
//  Today.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct Today: View {
    var animation : Namespace.ID
    @EnvironmentObject var model : TodayViewModel
    var body: some View {
        ScrollView{
            
            VStack{
                
                HStack{
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text("Sun Mar 7")
                            .foregroundColor(.gray)
                        
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                    }
                    
                    Spacer()
                    
                    
                    Button(action: {}) {
                        
                        
                        Image(systemName: "person.fill")
                            .font(.largeTitle)
                            
                        
                    }
                    
                    
                    
                }
                .padding()
                
                ForEach(Todayitems){item in
                    
                    
                    TodayCardView(today: item, animation: animation)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.8)){
                                
                                model.selectedItem = item
                                model.show.toggle()
                            }
                        }
                        
                }
                
                
            }
            .padding(.bottom)
            
        }
        .background(Color.primary.opacity(0.03).ignoresSafeArea())
    }
}

struct Today_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
