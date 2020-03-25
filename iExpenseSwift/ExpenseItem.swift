//
//  File.swift
//  iExpenseSwift
//
//  Created by 신지호 on 2020/03/25.
//  Copyright © 2020 jiho. All rights reserved.
//
import SwiftUI
// Identifiable 을 붙이면 ForEach에 id: \.id 부분을 없앨수 있다
struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
