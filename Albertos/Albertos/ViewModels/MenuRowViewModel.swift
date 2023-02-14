//
//  MenuRowViewModel.swift
//  Albertos
//
//  Created by Roar Lochar on 14/02/2023.
//

import Foundation

public struct MenuRowViewModel {
    private let item: MenuItem
    public var name: String {
        return item.spicy ? item.name.appending(" 🌶️") : item.name
    }

    public init(item: MenuItem) {
        self.item = item
    }
}
