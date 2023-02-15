//
//  MenuFetchingStub.swift
//  AlbertosTests
//
//  Created by Roar Lochar on 15/02/2023.
//

import Albertos
import Combine
import Foundation

class MenuFetchingStub: MenuFetching {
	let result: Result<[MenuItem], Error>

	init(returning result: Result<[MenuItem], Error>) {
		self.result = result
	}

	func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
		return result.publisher
			.delay(for: 0.1, scheduler: RunLoop.main)
			.eraseToAnyPublisher()
	}
}
