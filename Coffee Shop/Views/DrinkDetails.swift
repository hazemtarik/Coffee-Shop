//
//  DrinkDetails.swift
//  Coffee Shop
//
//  Created by Hazem Tarek on 20/01/2021.
//

import SwiftUI

struct DrinkDetails: View {
    
    var drink: Drink
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                ZStack(alignment: .bottom) {
                    Image(drink.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Rectangle()
                        .colorInvert()
                        .frame(height: 70)
                        .opacity(0.15)
                        .blur(radius: 2)
                    HStack{
                        VStack (alignment: .leading) {
                            Text(drink.name)
                                .foregroundColor(.white)
                                .font(.largeTitle)
                            
                        }
                        .padding()
                        Spacer()
                    }
                }
                .listRowInsets(EdgeInsets())
                Text(drink.description)
                    .font(.body)
                    .lineSpacing(6)
                    .padding()
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }
                .padding(.vertical, 10)
                
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct OrderButton : View{
    var body: some View{
        Button(action:{}){
            Text("Order Now")
        }
        .frame(width:180,height:40)
        .foregroundColor(.white)
        .font(.title3)
        .background(Color.blue)
        .cornerRadius(20)
        .buttonStyle(PlainButtonStyle())
    }
}



struct DrinkDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetails(drink: drinks.last!)
    }
}
