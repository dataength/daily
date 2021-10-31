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

    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: self.datetime)
        
        return date?.getFormattedDate(format: "MMM d, yyyy") ?? ""
    }
}
