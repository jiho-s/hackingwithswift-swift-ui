//
//  Bundle-Decodable.swift
//  MoonshotSwift
//
//  Created by 신지호 on 2020/03/27.
//  Copyright © 2020 jiho. All rights reserved.
//
import SwiftUI
extension Bundle {
    func decode(_ file: String) -> [Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([Astronaut].self, from: data) else {
            fatalError("Failed to decode \(file) in bundle.")
        }
        
        return loaded
    }
}
