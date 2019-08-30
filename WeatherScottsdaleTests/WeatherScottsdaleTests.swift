//
//  WeatherScottsdaleTests.swift
//  WeatherScottsdaleTests
//
//  Created by Jeffrey Hotz on 2019-08-19.
//  Copyright © 2019 Jacob Hotz. All rights reserved.
//

import XCTest
@testable import WeatherScottsdale

class WeatherScottsdaleTests: XCTestCase {

    //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        // zero meal
        let zeroRatingMeal = Meal.init(name: "Cool Beans", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        let fiveStarMeal = Meal.init(name: "Eggselent", photo: nil, rating: 5)
        XCTAssertNotNil(fiveStarMeal)
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }

}
