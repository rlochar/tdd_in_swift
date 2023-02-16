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
		switch viewModel.sections {

		case .success(let sections):
			List {
				ForEach(sections) { section in
					Section(header: Text(section.category)) {
						ForEach(section.items) { item in
							MenuRow(viewModel: .init(item: item))
						}
					}
				}
			}
		case .failure(let error):
			Text("An error occured:")
			Text(error.localizedDescription).italic()
		}
    }
}
