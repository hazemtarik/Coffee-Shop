//
//  Drink.swift
//  Coffee Shop
//
//  Created by Hazem Tarek on 20/01/2021.
//

import SwiftUI

struct Drink:  Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var description: String
    var category: String
    
}
