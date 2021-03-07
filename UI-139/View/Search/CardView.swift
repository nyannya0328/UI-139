//
//  CardView.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct CardView: View {
    
    var item : Item
    var body: some View {
        HStack(spacing:15){
            
            Image(item.name)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .clipShape(Circle())
            
            VStack{
                
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text(item.name)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                        
                        Text(item.soucrce)
                            .font(.caption)
                            .foregroundColor(.gray)
                    })
                    
                    Spacer(minLength: 10)
                    
                    VStack{
                        NavigationLink(destination: TabBar()) {
                            Text("Get")
                                .fontWeight(.heavy)
                                .padding(.vertical,8)
                                .padding(.horizontal,20)
                                .background(Color.primary.opacity(0.3))
                                .clipShape(Capsule())
                            
                        }
                        
                           
                      
                        
                        Text("IN App")
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                }
                
                Divider()
                    .foregroundColor(.primary)
            }
            
            
        }
        .padding(.horizontal)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
