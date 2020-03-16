//
//  RoomDetail.swift
//  SwiftUI Harry Potter Info
//
//  Created by Gianmarco Giretti on 05.03.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    
    var room: Room
    var body: some View {
        List {
            ZStack (alignment: .bottom) {
                Image(room.imageName)
                .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.2)
                .blur(radius: 10)
                HStack {
                    VStack(alignment: .leading, spacing: 8){
                        Text(room.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading){
                Text(room.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack{
                    Spacer()
                   OrderButton()
                    Spacer()
                }.padding(.top, 50)
                
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct OrderButton : View {
    var body: some View {
        Button(action: {}) {
            Text("Show Room")
        }.frame(width: 250, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
        
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetail(room: roomData[1])
    }
}
