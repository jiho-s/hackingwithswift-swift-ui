//
//  ContentView.swift
//  CoreDataPractice
//
//  Created by 신지호 on 2020/04/10.
//  Copyright © 2020 jiho. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc

    var body: some View {
        Button("save") {
            if self.moc.hasChanges {
                try? self.moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
