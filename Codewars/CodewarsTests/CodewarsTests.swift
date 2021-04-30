//
//  CodewarsTests.swift
//  CodewarsTests
//
//  Created by Luis Flores on 4/29/21.
//

import XCTest
@testable import Codewars

class CodewarsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGrow() {
        XCTAssertEqual(6, grow([1,2,3]))
        XCTAssertEqual(16, grow([4,1,1,1,4]))
        XCTAssertEqual(64, grow([2,2,2,2,2,2]))
    }
    
    func testBalancedTests() {
        XCTAssertEqual(balancedNumber(7), "Balanced")
        XCTAssertEqual(balancedNumber(959), "Balanced")
        XCTAssertEqual(balancedNumber(13), "Balanced")
        XCTAssertEqual(balancedNumber(56239814), "Balanced")
        XCTAssertEqual(balancedNumber(424), "Balanced")
    }
    
    func testNotBalancedTests() {
        XCTAssertEqual(balancedNumber(1024), "Not Balanced")
        XCTAssertEqual(balancedNumber(66545), "Not Balanced")
        XCTAssertEqual(balancedNumber(295591), "Not Balanced")
        XCTAssertEqual(balancedNumber(1230987), "Not Balanced")
    }
    
    func testAdd() {
        XCTAssertEqual(Codewars.add(1)(3), 4, "add(1)(3) does not equal 4")
        XCTAssertEqual(Codewars.add(2)(2), 4, "add(2)(2) does not equal 4")
        XCTAssertEqual(Codewars.add(0)(-15), -15, "add(0)(-15)")
        XCTAssertEqual(Codewars.add(10)(3), 13, "add(10)(3) does not equal 13")
        XCTAssertEqual(Codewars.add(100)(23), 123, "add(100)(23) does not equal 123")
    }
    

}
