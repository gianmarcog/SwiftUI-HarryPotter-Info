//
//  ContentView.swift
//  SwiftUI Harry Potter Info
//
//  Created by Gianmarco Giretti on 04.03.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var categories:[String:[Room]] {
        .init (
            grouping: roomData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        
        //The NavigationView makes it able to handle the navigation between the categories in the List and the RoomDetail List
        NavigationView{
            //List is gonna get sorted after the keys from the categories dictionary
            List(categories.keys.sorted(), id: \.self) {
                    key in RoomRow (categoryName: "\(key) ", rooms: self.categories[key]!)
                        .frame(height: 320)
                        .padding(.top)
                        .padding(.bottom)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
