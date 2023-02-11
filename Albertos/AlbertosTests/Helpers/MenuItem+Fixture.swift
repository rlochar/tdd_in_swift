//
//  MenuItem+Fixture.swift
//  MenuGroupingTests
//
//  Created by Roar Lochar on 10/02/2023.
//

import Albertos

extension MenuItem {
	static func fixture(category: String = "category", name: String = "name", spicy: Bool = false, price: Double = 0) -> MenuItem {
		MenuItem(category: category, name: name, spicy: spicy, price: price)
	}
}
