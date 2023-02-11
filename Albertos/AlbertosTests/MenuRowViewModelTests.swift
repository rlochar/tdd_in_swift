//
//  MenuRowViewModelTests.swift
//  AlbertosTests
//
//  Created by Roar Lochar on 10/02/2023.
//

import XCTest
import Albertos

final class MenuRowViewModelTests: XCTestCase {

	func test_when_item_is_not_spicy_text_is_item_name_only() {
		let item = MenuItem.fixture(name: "name", spicy: false)
		let viewModel = MenuRowViewModel(item: item)

		XCTAssertEqual(viewModel.name, "name")
	}

	func test_when_item_is_spicy_text_is_item_name_with_chili_emoji() {
		let item = MenuItem.fixture(name: "name", spicy: true)
		let viewModel = MenuRowViewModel(item: item)

		XCTAssertEqual(viewModel.name, "name 🌶️")
	}

}
