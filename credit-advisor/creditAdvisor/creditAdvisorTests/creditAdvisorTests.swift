//
//  creditAdvisorTests.swift
//  creditAdvisorTests
//
//  Created by McL on 8/9/18.
//  Copyright © 2018 McL. All rights reserved.
//

import XCTest
@testable import creditAdvisor

class creditAdvisorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testRound ()
    {
        XCTAssert(LanguageExtension.round(10.2, 2) == 10.2)
        XCTAssert(LanguageExtension.round(10.2333, 2) == 10.24)
        XCTAssert(LanguageExtension.round(10.2933, 2) == 10.3)
    }
    
    func testGetPrice ()
    {
        print("\(Price.getPrice(itemPrice: 99.9, percents: 5, months: 12, freeFirstMonth: true))")
        
        XCTAssert(Price.getPrice(itemPrice: 100, percents: 5, months: 12, freeFirstMonth: false) == 160)
        XCTAssert(Price.getPrice(itemPrice: 99.99, percents: 5, months: 12, freeFirstMonth: false) == 159.99) // 59.994
        XCTAssert(Price.getPrice(itemPrice: 99.9, percents: 5, months: 12, freeFirstMonth: false) == 159.85) // 59.94
        
        XCTAssert(Price.getPrice(itemPrice: 100, percents: 5, months: 12, freeFirstMonth: true) == 155)
        XCTAssert(Price.getPrice(itemPrice: 99.99, percents: 5, months: 12, freeFirstMonth: true) == 154.99) // 54.9945
        XCTAssert(Price.getPrice(itemPrice: 99.9, percents: 5, months: 12, freeFirstMonth: true) == 154.85) // 54.945
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
