//
//  DataService.swift
//  Coffee Shop
//
//  Created by Hazem Tarek on 20/01/2021.
//

import Foundation

let drinks: [Drink] = load("drinks.json")

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("No file found with this name: \(fileName)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("No data found with this file name: \(fileName)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError(error.localizedDescription)
    }
    
}
