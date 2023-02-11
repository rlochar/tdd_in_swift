//
//  MenuItem.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

public struct MenuItem {
	public let category: String
	public let name: String
	public let spicy: Bool
	public let price: Double

	public init(category: String, name: String, spicy: Bool = false, price: Double = 0) {
		self.category = category
		self.name = name
		self.spicy = spicy
		self.price = price
	}
}

extension MenuItem: Identifiable {
	public var id: String { name }
}
