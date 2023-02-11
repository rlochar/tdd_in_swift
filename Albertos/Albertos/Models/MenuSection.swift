//
//  MenuSection.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

public struct MenuSection {
	public let category: String
	public let items: [MenuItem]

	public init(category: String, items: [MenuItem]) {
		self.category = category
		self.items = items
	}
}

extension MenuSection: Identifiable {
	public var id: String { category }
}
