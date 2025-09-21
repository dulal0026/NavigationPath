//
//  ProductDetailsView.swift
//  NavigationPath
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct ProductDetailsView: View {
    
    @State var product: Product
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 20) {
            Text(product.title)
                .font(.largeTitle)
                .padding()

            Button("Buy Now") {
                path.append("Checkout") 
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle(product.title)
        .navigationDestination(for: String.self) { value in
            if value == "Checkout" {
                CheckoutView(path: $path)
            }
        }
    }
}

#Preview {
    ProductDetailsView(product: products[0], path: .constant(NavigationPath()))
}
