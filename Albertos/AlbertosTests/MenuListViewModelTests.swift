//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by Roar Lochar on 14/02/2023.
//

import XCTest
import Albertos
import Combine

final class MenuListViewModelTests: XCTestCase {

	var cancellables = Set<AnyCancellable>()

    func test_calls_given_grouping_function() throws {
		try XCTSkipIf(true, "skipping this for now, keeping it to resure part of the code later one")

        var called = false
        let inputSections = [MenuSection.fixture()]
        
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            called = true
            return inputSections
        }
        
        let viewModel = MenuListViewModel(menuFetching: MenuFetchingPlaceHolder(), menuGrouping: spyClosure)
        let sections = viewModel.sections
        
        XCTAssertTrue(called)
        XCTAssertEqual(sections, inputSections)
    }

	func test_when_fetching_starts_publishes_empty_menu() {
		let viewModel = MenuListViewModel(menuFetching: MenuFetchingPlaceHolder())

		XCTAssertTrue(viewModel.sections.isEmpty)
	}

	func test_when_fetching_succeeds_publishes_sections_built_from_received_menu_and_given_grouping_closure() {
		var receivedMenu: [MenuItem]?
		let expectedSections = [MenuSection.fixture()]

		let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
			receivedMenu = items
			return expectedSections
		}

		let viewModel = MenuListViewModel(menuFetching: MenuFetchingPlaceHolder(), menuGrouping: spyClosure)

		let exp = expectation(description: "Publishes sections bult from the received menu and given grouping closure")

		viewModel
			.$sections
			.dropFirst()
			.sink { value in
				XCTAssertEqual(receivedMenu, menu)
				XCTAssertEqual(value, expectedSections)
				exp.fulfill()
			}
			.store(in: &cancellables)

		wait(for: [exp], timeout: 1)
	}

	func test_when_fetching_fails_publishes_an_error() {

	}
}
