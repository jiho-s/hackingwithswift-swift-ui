//
//  ContentView.swift
//  iExpenseSwift
//
//  Created by 신지호 on 2020/03/24.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user = User()
    @State private var showingSheet = false
    var body: some View {
        Form {
            Text("Your name is \(user.firstName) \(user.lastName).")

            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
            Button("Show sheet") {
                self.showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                SecondView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
