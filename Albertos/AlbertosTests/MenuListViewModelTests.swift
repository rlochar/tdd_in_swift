//
//  MenuListViewModelTests.swift
//  AlbertosTests
//
//  Created by Roar Lochar on 14/02/2023.
//

import XCTest
import Albertos

final class MenuListViewModelTests: XCTestCase {

    func test_calls_given_grouping_function() {
        var called = false
        let inputSections = [MenuSection.fixture()]
        
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            called = true
            return inputSections
        }
        
        let viewModel = MenuListViewModel(menu: [.fixture()], menuGrouping: spyClosure)
        let sections = viewModel.sections
        
        XCTAssertTrue(called)
        XCTAssertEqual(sections, inputSections)
    }

}
