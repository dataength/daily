//
//  ContentModel.swift
//  Daily
//
//  Created by Gatuk Chattanon on 17/10/21.
//

import Foundation

struct ContentModel: Codable, Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let url: String
    let datetime: String
    let summary: String
}
