//
//  MenuListViewModel.swift
//  Albertos
//
//  Created by Roar Lochar on 14/02/2023.
//

public struct MenuListViewModel {
    private let menu: [MenuItem]
    private let grouping: ([MenuItem]) -> [MenuSection]
    
    public var sections: [MenuSection]  {
        get {
            grouping(menu)
        }
    }
    
    public init(menu: [MenuItem], menuGrouping: @escaping ([MenuItem]) -> [MenuSection] = groupMenuByCategory) {
        self.menu = []
        self.grouping = menuGrouping
    }
}
