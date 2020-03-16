//
//  RoomItem.swift
//  SwiftUI Harry Potter Info
//
//  Created by Gianmarco Giretti on 04.03.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct RoomItem: View {
    
    var room: Room
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(room.imageName)
            .resizable()
                    .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 150)
            .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack (alignment: .leading, spacing: 5.0){
                Text(room.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                Text(room.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}

struct RoomItem_Previews: PreviewProvider {
    static var previews: some View {
        RoomItem(room: roomData[0])
    }
}
