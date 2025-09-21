//
//  ProductsView.swift
//  NavigationPath
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct ProductsView: View {
    
    @State var category: Category

    @State var products: [Product]
    
    var body: some View {
        VStack {
            List(products.filter { $0.category == category }) { product in
                NavigationLink(value: product) {
                    Text(product.title)
                }
            }
            .navigationTitle(category.name)
        }
    }
}

#Preview {
    ProductsView(
        category: categories[0],
        products: products.filter { $0.category == categories[0] }
    )
}
