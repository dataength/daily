//
//  DailyTests.swift
//  DailyTests
//
//  Created by Gatuk Chattanon on 5/9/21.
//

import XCTest
@testable import Daily

class DateExtensionTests: XCTestCase {
    var dateFormatter: DateFormatter?

    override func setUpWithError() throws {
        dateFormatter = DateFormatter()
        dateFormatter?.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    }

    func testGetFormattedDateShouldReturnFormattedDateInGivenFormat() throws {
        let date = dateFormatter?.date(from: "2021-08-17T19:39:46+0700")
        let actual = date?.getFormattedDate(format: "MMM d, yyyy")
        XCTAssertEqual(actual, "Aug 17, 2021")
    }

    func testGetFormattedDateShouldReturnNilIfGivenDateIsNotInCorrectFormat() throws {
        let date = dateFormatter?.date(from: "2021-08-17 19:39:46")
        let actual = date?.getFormattedDate(format: "MMM d, yyyy")
        XCTAssertNil(actual)
    }
}
