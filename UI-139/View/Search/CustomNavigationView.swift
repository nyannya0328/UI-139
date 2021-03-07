//
//  CustomNavigationView.swift
//  UI-139
//
//  Created by にゃんにゃん丸 on 2021/03/07.
//

import SwiftUI

struct CustomNavigationView: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        return CustomNavigationView.Coordinator(parent: self)
    }
    
    
    var view : AnyView
    var largetitle : Bool
    var title : String
    var placeholder : String
    var onsearch : (String)->()
    var oncancel : ()->()
    
    init(view : AnyView,placehodler:String? = "search",largetitle:Bool? = true, title :String, onsearch:@escaping(String)->(),oncancel:@escaping()->()) {
        self.view = view
        self.placeholder = placehodler!
        self.largetitle = largetitle!
        self.title = title
        
        self.onsearch = onsearch
        self.oncancel = oncancel
        
    }
    
    
    func makeUIViewController(context: Context) -> UINavigationController {
        
        let chiledview = UIHostingController(rootView: view)
        let controller = UINavigationController(rootViewController: chiledview)
        controller.navigationBar.topItem?.title = title
        controller.navigationBar.prefersLargeTitles = largetitle
        
       
        controller.navigationBar.topItem?.hidesSearchBarWhenScrolling = false

      
        
        
        let search = UISearchController()
        controller.navigationBar.topItem?.searchController = search

        search.searchBar.placeholder = placeholder
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.delegate = context.coordinator
        
        
    
        
        
        return controller
        
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
        uiViewController.navigationBar.topItem?.title = title
        uiViewController.navigationBar.topItem?.searchController?.searchBar.placeholder = placeholder
        uiViewController.navigationBar.prefersLargeTitles = largetitle
        
    }
    
    class Coordinator : NSObject,UISearchBarDelegate{
        
        var parent : CustomNavigationView
        
        init(parent : CustomNavigationView) {
            self.parent = parent
        }
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            
            self.parent.onsearch(searchText)
            
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            self.parent.oncancel()
            
        }
        
        
        
    }
}

