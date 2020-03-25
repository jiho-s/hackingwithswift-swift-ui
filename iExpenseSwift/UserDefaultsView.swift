//
//  UserDefaultsView.swift
//  iExpenseSwift
//
//  Created by 신지호 on 2020/03/25.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI

struct UserDefaultsView: View {
    @State private var user = User(firstName: "JIHO", lastName: "Shin")
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(self.user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct UserDefaultsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsView()
    }
}
