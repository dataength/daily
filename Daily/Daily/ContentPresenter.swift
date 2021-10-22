//
//  ContentPresenter.swift
//  Daily
//
//  Created by Gatuk Chattanon on 17/10/21.
//

import Foundation

class ContentPresenter {
    func loadContents() -> [ContentModel]? {
        guard let contentsJsonData = readLocalFile(forName: "Contents") else { return [] }
        return parse(jsonData: contentsJsonData) ?? []
    }

    private func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }

        return nil
    }

    private func parse(jsonData: Data) -> [ContentModel]? {
        var parsedContents: [ContentModel]?
        do {
            parsedContents = try JSONDecoder().decode([ContentModel].self, from: jsonData)
        } catch {
            print("decode error")
        }
        return parsedContents
    }
}
