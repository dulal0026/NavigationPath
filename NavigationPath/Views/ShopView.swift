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

            // MARK: - Destinations
            .navigationDestination(for: Category.self) { category in
                
               
               List(products.filter { $0.category == category }) { product in
                    NavigationLink(value: product) {
                        Text(product.title)
                    }
                }
               .navigationTitle(category.name)
            }

            .navigationDestination(for: Product.self) { product in
                VStack(spacing: 20) {
                    Text(product.title)
                        .font(.largeTitle)
                        .padding()

                    Button("Buy Now") {
                        path.append("Checkout") // push to checkout screen
                    }
                    .buttonStyle(.borderedProminent)
                }
                .navigationTitle(product.title)
            }

            .navigationDestination(for: String.self) { value in
                if value == "Checkout" {
                    VStack(spacing: 20) {
                        Text("🛒 Checkout")
                            .font(.largeTitle)

                        Button("Back to Home") {
                            path.removeLast(path.count) // reset navigation
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }
        }
    }
}


#Preview {
    ShopView()
}
