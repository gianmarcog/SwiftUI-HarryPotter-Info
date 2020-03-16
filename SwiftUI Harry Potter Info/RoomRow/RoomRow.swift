 //
//  RoomRow.swift
//  SwiftUI Harry Potter Info
//
//  Created by Gianmarco Giretti on 05.03.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct RoomRow: View {
    
    var categoryName: String
    var rooms: [Room]
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal ,showsIndicators: false){
                HStack(alignment: .top) {
                    ForEach(self.rooms, id: \.name) { room in
                    
                        NavigationLink(destination: RoomDetail(room:room))
                        {
                        RoomItem(room: room)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

struct RoomRow_Previews: PreviewProvider {
    static var previews: some View {
        RoomRow(categoryName: "Hogwarts", rooms: roomData)
    }
}
