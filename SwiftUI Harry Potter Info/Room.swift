//
//  Room.swift
//  SwiftUI Harry Potter Info
//
//  Created by Gianmarco Giretti on 04.03.20.
//  Copyright © 2020 Gianmarco Giretti. All rights reserved.
//

import SwiftUI

struct Room: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
