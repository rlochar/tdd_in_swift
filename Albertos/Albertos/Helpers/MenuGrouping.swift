//
//  MenuGrouping.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

public func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
	return Dictionary(grouping: menu, by: { $0.category })
		.map { key, value in
			MenuSection(category: key, items: value)
		}
		.sorted { $0.category > $1.category }
}
