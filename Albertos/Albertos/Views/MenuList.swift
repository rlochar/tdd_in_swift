//
//  MenuList.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

import SwiftUI

struct MenuList: View {
	@ObservedObject var viewModel: MenuListViewModel

    var body: some View {
		List {
            ForEach(viewModel.sections) { section in
				Section(header: Text(section.category)) {
					ForEach(section.items) { item in
						MenuRow(viewModel: .init(item: item))
					}
				}
			}
		}
    }
}
