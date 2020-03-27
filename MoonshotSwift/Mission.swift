//
//  Mission.swift
//  MoonshotSwift
//
//  Created by 신지호 on 2020/03/27.
//  Copyright © 2020 jiho. All rights reserved.
//



struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
