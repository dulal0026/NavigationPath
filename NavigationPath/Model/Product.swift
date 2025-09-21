//
//  Product.swift
//  NavigationPath
//
//  Created by Dulal Hossain on 21/9/25.
//

import Foundation

struct Product: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let category: Category
}


let categories = [
    Category(name: "Electronics"),
    Category(name: "Clothing"),
    Category(name: "Groceries")
]

let products = [
    Product(
        title: "iPhone 16",
        category: categories[0]
    ),
    Product(
        title: "MacBook Pro",
        category: categories[0]
    ),
    Product(
        title: "T-Shirt",
        category: categories[1]
    ),
    Product(
        title: "Jeans",
        category: categories[1]
    ),
    Product(
        title: "Apple",
        category: categories[2]
    ),
    Product(
        title: "Milk",
        category: categories[2]
    )
]
