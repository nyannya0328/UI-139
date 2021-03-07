//
//  DetatilView.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct DetatilView: View {
    @ObservedObject var model : TodayViewModel
    var animation : Namespace.ID
    
    @State var scale :CGFloat = 1
    var body: some View {
        ScrollView{
            VStack{
                
                ZStack(alignment: .top) {
                    Image(model.selectedItem.contentimage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: model.selectedItem.contentimage, in: animation)
                        .frame(width: getrect().width, height: getrect().height / 2.5)
                        .cornerRadius(15)
                       
                        
                            HStack{
                                
                                
                                Text(model.selectedItem.overlay)
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.orange)
                                    .kerning(1.8)
                                
                                Spacer(minLength: 0)
                                
                                
                                Button(action: {
                                    
                                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.8)){
                                        
                                        
                                        model.show.toggle()
                                    }
                                    
                                    
                                }) {
                                    
                                    Image(systemName: "xmark")
                                        .foregroundColor(Color.black)
                                        .padding()
                                        .background(Color.white.opacity(0.8))
                                        .clipShape(Circle())
                                    
                                }
                                
                                    
                            }
                            .padding(.horizontal)
                            .padding(.top,UIApplication.shared.windows.first!.safeAreaInsets.top + 10)
                           
                           
                        
                      
                }
                .gesture(DragGesture(minimumDistance:0).onChanged(onChanged(value:)).onEnded(onEnded(value:)))
                
                
                
                
                
                
                HStack(spacing:10){
                    
                    
                    Image(model.selectedItem.logo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .cornerRadius(15)
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(model.selectedItem.title)
                            .font(.title)
                            .bold()
                            .foregroundColor(.gray)
                        
                        Text(model.selectedItem.category)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .kerning(1.3)
                            
                    }
                    Spacer(minLength: 0)
                    
                    VStack{
                        
                        
                        Button(action: {}) {
                            
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
                .matchedGeometryEffect(id: model.selectedItem.id, in: animation)
                .padding()
                
                HStack{
                    
                    
                    Text("Kavsoft is Amasing")
                        .font(.title)
                }
                
                
                Button(action: {}) {
                    Label(title: {
                        
                        Text("Shape")
                            .foregroundColor(.primary)
                            
                        
                    }){
                        Image(systemName: "square.and.arrow.up.fill")
                            .font(.title2)
                            .foregroundColor(.primary)
                    
                    }
                }
                .padding(.vertical,10)
                .padding(.horizontal,25)
                .background(Color.primary.opacity(0.03))
                .cornerRadius(10)
                    
                    
            }
        }
        .scaleEffect(scale)
        .ignoresSafeArea()
        
    }
    func onChanged(value : DragGesture.Value){
        
        let scale = value.translation.height / UIScreen.main.bounds.height
        
        if 1 - scale > 0.75{
        
        self.scale = 1 - scale
        }
        
    }
    
    func onEnded(value : DragGesture.Value){
        
        withAnimation(.spring()){
            
            
           
            
            if scale < 0.9{
                
                model.show.toggle()
            }
            scale = 1
            
        }
        
        
        
    }
}

struct DetatilView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}

extension View{
    
    func getrect()->CGRect{
        return UIScreen.main.bounds
    }
}
