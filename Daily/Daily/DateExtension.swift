//
//  DateExtension.swift
//  Daily
//
//  Created by Gatuk Chattanon on 30/10/21.
//

import Foundation

extension Date {
    func getFormattedDate(format: String) -> String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = format
        return dateFormat.string(from: self)
    }
}
