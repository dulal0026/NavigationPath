//
//  ShopView.swift
//  NavigationPath
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI


struct ShopView: View {
   
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            List(categories) { category in
                NavigationLink(value: category) {
                    Text(category.name)
                        .font(.headline)
                }
            }
            .navigationTitle("Categories")

            .navigationDestination(for: Category.self) { category in
                
                ProductsView(
                    path: $path,
                    category: category,
                    products: products.filter { $0.category == category}
                )
            }
        }
    }
}


#Preview {
    ShopView()
}
