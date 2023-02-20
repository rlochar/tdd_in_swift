//
//  MenuListViewModel.swift
//  Albertos
//
//  Created by Roar Lochar on 14/02/2023.
//
import Combine

public class MenuListViewModel: ObservableObject {
	private var cancellables = Set<AnyCancellable>()

    @Published public private(set) var sections: Result<[MenuSection], Error> = .success([])
    
    public init(menuFetching: MenuFetching, menuGrouping: @escaping ([MenuItem]) -> [MenuSection] = groupMenuByCategory) {

		menuFetching
			.fetchMenu()
			.sink(
				receiveCompletion: { [weak self] completion in
					guard case .failure(let error) = completion else {
						return
					}

					self?.sections = .failure(error)
				},
				receiveValue: { [weak self] value in
					self?.sections = .success(menuGrouping(value))
				}
			)
			.store(in: &cancellables)
	}
}
