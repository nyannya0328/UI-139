//
//  ContentView.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var filteritems = items
    var body: some View {
        
   
        
       CustomNavigationView(view: AnyView(Home(fileteritems: $filteritems)), placehodler: "Search", largetitle: true, title: "Kavsoft",onsearch: { (txt) in

            if txt != ""{

                self.filteritems = items.filter{$0.name.lowercased().contains(txt.lowercased())
                }



            }
            else{

                self.filteritems = items
            }

        } ,oncancel: {

            self.filteritems = items

        })
       .ignoresSafeArea()
       .navigationBarTitle("")
       .navigationBarHidden(true)

        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
