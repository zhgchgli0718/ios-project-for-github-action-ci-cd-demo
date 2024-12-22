//
//  CalculatorTests.swift
//  iOS ProjectTests
//
//  Created by zhgchgli on 2024/12/10.
//

import XCTest
@testable import iOS_Project

final class CalculatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddition() {
        let calculator = Calculator()
        XCTAssertEqual(calculator.add(5, 3), 8, "Addition should return the correct sum.")
        XCTAssertEqual(calculator.add(-5, 3), -2, "Addition should handle negative numbers.")
    }
    
    func testSubtraction() {
        let calculator = Calculator()
        XCTAssertEqual(calculator.subtract(10, 5), 50, "Subtraction should return the correct difference.")
        XCTAssertEqual(calculator.subtract(5, 10), -5, "Subtraction should handle negative results.")
    }
    
    func testMultiplication() {
        let calculator = Calculator()
        XCTAssertEqual(calculator.multiply(4, 3), 12, "Multiplication should return the correct product.")
        XCTAssertEqual(calculator.multiply(-4, 3), -12, "Multiplication should handle negative numbers.")
        XCTAssertEqual(calculator.multiply(0, 5), 0, "Multiplication with zero should return zero.")
    }
    
    func testDivision() {
        let calculator = Calculator()
        XCTAssertEqual(try calculator.divide(10, 2), 5, "Division should return the correct quotient.")
        XCTAssertEqual(try calculator.divide(9, -3), -3, "Division should handle negative numbers.")
    }
    
    func testDivisionByZero() {
        let calculator = Calculator()
        XCTAssertThrowsError(try calculator.divide(10, 0)) { error in
            XCTAssertEqual(error as? Calculator.DivisionError, .divideByZero, "Division by zero should throw a divideByZero error.")
        }
    }

}
