//
//  FruitModel.swift
//  FruitApp
//
//  Created by Irsyad Ashari on 27/05/21.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var descriotion: String
    var nutrition: [String]
}
