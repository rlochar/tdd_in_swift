//
//  MenuSection+Fixture.swift
//  MenuGroupingTests
//
//  Created by Roar Lochar on 10/02/2023.
//

import Albertos

extension MenuSection {
	static func fixture(category: String = "a category", items: [MenuItem] = [.fixture()]) -> MenuSection {
		MenuSection(category: category, items: items)
	}
}
