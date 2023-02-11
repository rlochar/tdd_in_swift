//
//  MenuRow.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

import SwiftUI

struct MenuRow: View {
	let viewModel: MenuRowViewModel

	var body: some View {
		Text(viewModel.name)
	}
}

public struct MenuRowViewModel {
	private let item: MenuItem
	public var name: String {
		return item.spicy ? item.name.appending(" 🌶️") : item.name
	}

	public init(item: MenuItem) {
		self.item = item
	}
}
