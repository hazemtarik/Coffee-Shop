//
//  DrinkView.swift
//  Coffee Shop
//
//  Created by Hazem Tarek on 20/01/2021.
//

import SwiftUI

struct DrinkView: View {
    
    let drink: Drink
    
    var body: some View {
        
        
        NavigationLink(destination: DrinkDetails(drink: drink)) {
            VStack(alignment: .leading, spacing: 12.0) {
                Image(drink.imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 280, height: 210, alignment: .leading)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(drink.name)
                        .font(.title2)
                        .foregroundColor(.primary)
                    Text(drink.description)
                        .font(.body)
                        .foregroundColor(.gray)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .frame(width: 280)
                }
            }
        }
        
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkView(drink: drinks.first!)
    }
}
