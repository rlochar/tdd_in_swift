//
//  AlbertosApp.swift
//  Albertos
//
//  Created by Roar Lochar on 10/02/2023.
//

import SwiftUI

@main
struct AlbertosApp: App {
    var body: some Scene {
        WindowGroup {
			NavigationView {
				MenuList(sections: groupMenuByCategory(menu))
				.navigationTitle("Alberto's 🇮🇹")
			}
        }
    }
}
