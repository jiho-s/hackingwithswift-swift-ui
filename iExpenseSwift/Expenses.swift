//
//  Expenses.swift
//  iExpenseSwift
//
//  Created by 신지호 on 2020/03/25.
//  Copyright © 2020 jiho. All rights reserved.
//
import SwiftUI
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
