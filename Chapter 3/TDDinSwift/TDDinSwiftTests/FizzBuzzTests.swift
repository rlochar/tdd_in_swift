//
//  FizzBuzzTests.swift
//  TDDinSwiftTests
//
//  Created by Roar Lochar on 08/02/2023.
//

import XCTest

func fizzBuzz(_ number: Int) -> String {
	if number % 3 == 0 {
		return "fizz"
	}
	return ""
}

final class FizzBuzzTests: XCTestCase {

	func test_FizzBuzzDivisibleBy3_returnsFizz() {
		XCTAssertEqual(fizzBuzz(3), "fizz")
		XCTAssertEqual(fizzBuzz(6), "fizz")
		XCTAssertEqual(fizzBuzz(9), "fizz")
	}

	func test_FizzBuzzDivisibleBy5_returnsBuzz() {

	}

	func test_FizzBuzzDivisibleBy15_returnsFizzBuzz() {

	}

	func test_FizzBuzzNotDivisibleBy3or5_returnsInput() {

	}
}
