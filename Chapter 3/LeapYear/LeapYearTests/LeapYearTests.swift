//
//  LeapYearTests.swift
//  LeapYearTests
//
//  Created by Roar Lochar on 09/02/2023.
//

import XCTest

func isLeapYear(_ year: Int) -> Bool {
	guard year % 400 != 0 else {
		return true
	}
	guard year % 100 != 0 else {
		return false
	}

	if year % 4 == 0 {
		return true
	} else {
		return false
	}

}

final class LeapYearTests: XCTestCase {

	func test_evenlyDivisibleBy_4_isLeap() {
		XCTAssertTrue(isLeapYear(2000))
	}

	func test_evenlyDivisibleBy_100_isNotLeap() {
		XCTAssertFalse(isLeapYear(2100))
	}

	func test_evenlyDivisibleBy_400_isLeap() {
		XCTAssertTrue(isLeapYear(2000))
	}

	func test_notEvenlyDivisibleBy_4_or_400_isNotLeap() {
		XCTAssertFalse(isLeapYear(2021))
	}

}
