//
//  CheckoutView.swift
//  CupcakeCornerSwift
//
//  Created by 신지호 on 2020/04/06.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI
struct CheckoutView: View {
@ObservedObject var order: Order

@State private var confirmationMessage = ""
@State private var showingConfirmation = false

var body: some View {
    GeometryReader { geo in
        ScrollView {
            VStack {
                Image("cupcakes")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width)

                Text("Your total is $\(self.order.cost, specifier: "%.2f")")
                    .font(.title)

                Button("Place Order") {
                }
                .padding()
            }
        }
    }
    .navigationBarTitle("Check out", displayMode: .inline)
    .alert(isPresented: $showingConfirmation) {
        Alert(title: Text("Thank you!"), message: Text(confirmationMessage), dismissButton: .default(Text("OK")))
    }
}
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order())
    }
}
