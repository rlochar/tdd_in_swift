//
//  ProductsTests.swift
//  ProductsTests
//
//  Created by Roar Lochar on 09/02/2023.
//

import XCTest

struct Product {
	let category: String
	let price: Double
}

func sumOf(_ products: [Product], withCategory category: String) -> Double {
	return products
		.filter {$0.category == category }
		.reduce(0.0) { $0 + $1.price }
}

final class ProductsTests: XCTestCase {

	func test_sum_of_empty_array_is_zero() {
		let category = "books"
		let products = [Product]()

		let sum = sumOf(products, withCategory: category)

		XCTAssertEqual(sum, 0)
	}

	func test_sum_of_one_item_is_item_price() {
		let category = "books"
		let product = Product(category: category, price: 3)

		let sum = sumOf([product], withCategory: category)

		XCTAssertEqual(sum, 3)
	}

	func test_sum_is_sum_of_items_prices_for_given_category() {
		let category = "books"
		let products = [
			Product(category: category, price: 3),
			Product(category: "movies", price: 2),
			Product(category: category, price: 1)
		]

		let sum = sumOf(products, withCategory: category)

		XCTAssertEqual(sum, 4)
	}

}
