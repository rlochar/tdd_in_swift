//
//  MenuList.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

import SwiftUI

struct MenuList: View {
	let sections: [MenuSection]

    var body: some View {
		List {
			ForEach(sections) { section in
				Section(header: Text(section.category)) {
					ForEach(section.items) { item in
						MenuRow(viewModel: .init(item: item))
					}
				}
			}
		}
    }
}
