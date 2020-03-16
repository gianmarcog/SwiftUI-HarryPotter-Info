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
        
        NavigationView{
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
