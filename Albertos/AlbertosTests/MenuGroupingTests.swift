//
//  MenuGroupingTests.swift
//  AlbertosTests
//
//  Created by Roar Lochar on 10/02/2023.
//

import XCTest
import Albertos

final class MenuGroupingTests: XCTestCase {

	func test_menu_with_many_categories_returns_a_section_per_category_in_reverse_alphabetical_order() {
		let menu: [MenuItem] = [
			.fixture(category: "pastas"),
			.fixture(category: "drinks"),
			.fixture(category: "pastas"),
			.fixture(category: "desserts")
		]

		let sections = groupMenuByCategory(menu)

		XCTAssertEqual(sections.count, 3)
		XCTAssertEqual(sections[safe: 0]?.category, "pastas")
		XCTAssertEqual(sections[safe: 1]?.category, "drinks")
		XCTAssertEqual(sections[safe: 2]?.category, "desserts")
	}

	func test_menu_with_one_category_returns_one_section() throws {
		let menu: [MenuItem] = [
			.fixture(category: "pasta", name: "first item"),
			.fixture(category: "pasta", name: "second item")
		]

		let sections = groupMenuByCategory(menu)

		XCTAssertEqual(sections.count, 1)


		let section = try XCTUnwrap(sections.first)

		XCTAssertEqual(section.items.count, 2)

		XCTAssertEqual(section.items.first?.name, "first item")
		XCTAssertEqual(section.items.last?.name, "second item")
	}

	func test_empty_menu_returns_empty_sections() {
		let menu = [MenuItem]()

		let sections = groupMenuByCategory(menu)

		XCTAssertTrue(sections.isEmpty)
	}

}

extension Collection {
	subscript(safe index: Index) -> Element? {
		return indices.contains(index) ? self[index] : nil
	}
}
