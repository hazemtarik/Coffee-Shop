//
//  ContentView.swift
//  Coffee Shop
//
//  Created by Hazem Tarek on 20/01/2021.
//

import SwiftUI

struct HomeView: View {
    
    var categories:[String: [Drink]] {
        .init(grouping: drinks, by: {$0.category})
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categories.keys.sorted(), id: \String.self) { category in
                    CategoryView(category: "\(category) Drinks".uppercased(), drinks: categories[category]!)
                }
                .listRowInsets(.init(top: 20, leading: 0, bottom: 20, trailing: 0))
            }
            .navigationTitle("Drinks List")
            .accentColor(.green)
            .onAppear() {
                UITableView.appearance().separatorColor = .clear
                UITableView.appearance().showsVerticalScrollIndicator = false
            }
        }.accentColor( .primary)
        
    }
    //CategoryView(category: categories.first!.key.uppercased(), drinks: categories.first!.value)
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



//ForEach(categories.keys.sorted(), id: \String.self) { category in
//    CategoryView(category: "\(category) Drinks".uppercased(), drinks: categories[category]!)
//}
