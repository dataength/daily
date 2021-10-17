//
//  ContentModel.swift
//  Daily
//
//  Created by Gatuk Chattanon on 17/10/21.
//

struct ContentsModel: Codable {
    let data: [ContentsModel]
}

struct ContentModel: Codable {
    let title: String
    let author: String
    let url: String
    let datetime: String
    let summary: String
}
