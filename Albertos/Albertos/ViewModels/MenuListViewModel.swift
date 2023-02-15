//
//  MenuListViewModel.swift
//  Albertos
//
//  Created by Roar Lochar on 14/02/2023.
//
import Combine

public class MenuListViewModel: ObservableObject {
    @Published public private(set) var sections: [MenuSection]
    
    public init(menuFetching: MenuFetching, menuGrouping: @escaping ([MenuItem]) -> [MenuSection] = groupMenuByCategory) {
		sections = menuGrouping([])
    }
}
