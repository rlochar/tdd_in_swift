//
//  MenuFetching.swift
//  Albertos
//
//  Created by Roar Lochar on 15/02/2023.
//

import Combine

public protocol MenuFetching {
	func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
