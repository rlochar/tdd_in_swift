//
//  MenuFetchingPlaceHolder.swift
//  Albertos
//
//  Created by Roar Lochar on 15/02/2023.
//

import Combine
import Foundation

public class MenuFetchingPlaceHolder: MenuFetching {
	public func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
		return Future { $0(.success(menu)) }
		.delay(for: 0.5, scheduler: RunLoop.main)
		.eraseToAnyPublisher()
	}

	public init() {}
}
