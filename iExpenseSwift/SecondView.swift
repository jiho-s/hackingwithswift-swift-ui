//
//  SecondView.swift
//  iExpenseSwift
//
//  Created by 신지호 on 2020/03/25.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode
    var name: String
    var body: some View {
        VStack {
            Text("Hello, \(name)")
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(name: "@jiho")
    }
}
