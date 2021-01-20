//
//  CategoryView.swift
//  Coffee Shop
//
//  Created by Hazem Tarek on 20/01/2021.
//

import SwiftUI

struct CategoryView: View {
    
    var category: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(category)
                .font(.system(size: 23, weight: .medium))
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(drinks) { drink in
                        DrinkView(drink: drink)
                    }
                }.padding()
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: "HOT DRINKS", drinks: drinks)
    }
}
