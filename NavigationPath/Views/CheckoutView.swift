//
//  CheckoutView.swift
//  NavigationPath
//
//  Created by Dulal Hossain on 21/9/25.
//

import SwiftUI

struct CheckoutView: View {
    
    @Binding var path: NavigationPath

    var body: some View {
        VStack(spacing: 20) {
            Text("🛒 Checkout")
                .font(.largeTitle)

            Button("Back to Home") {
                path.removeLast(path.count)
            }
            Button("Back Product details") {
                path.removeLast(1)
            }
            
            Button("Back to Products") {
                path.removeLast(2)
            }
            
            Button("Back to Root") {
                path.removeLast(path.count)
            }
            .buttonStyle(.bordered)
        }
    }
}

