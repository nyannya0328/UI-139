//
//  TodayCardView.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct TodayCardView: View {
    var today : TodayItem
    @Environment(\.colorScheme) var shceme
    
    var animation : Namespace.ID
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack{
            
            Image(today.contentimage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: today.contentimage, in: animation)
               
               
            
            HStack(spacing:10){
                
                
                Image(today.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .cornerRadius(15)
                
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(today.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(.gray)
                    
                    Text(today.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .kerning(1.3)
                        
                }
                Spacer(minLength: 0)
                
                VStack{
                    
                    
                    Button(action: {
                        
                        present.wrappedValue.dismiss()
                        
                        
                    }) {
                        
                        Text("Get")
                            .bold()
                            .padding(.vertical,10)
                            .padding(.horizontal,25)
                            .background(Color.blue.opacity(0.2))
                            .clipShape(Capsule())
                        
                    
                        
                    }
                    
                    Text("Get App")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                
                
                    
                
            }
            .matchedGeometryEffect(id: today.id, in: animation)
            .padding()
            
        }
        .background(shceme == .dark ? Color.black : Color.white)
        .cornerRadius(15)
        .padding(.horizontal)
        .padding(.top)
        
    }
}

struct TodayCardView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
