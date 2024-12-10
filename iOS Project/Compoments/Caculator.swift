//
//  Caculator.swift
//  iOS Project
//
//  Created by zhgchgli on 2024/12/10.
//

import Foundation

struct Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func divide(_ a: Int, _ b: Int) throws -> Int {
        guard b != 0 else {
            throw DivisionError.divideByZero
        }
        return a / b
    }
    
    enum DivisionError: Error, LocalizedError {
        case divideByZero
        var errorDescription: String? {
            return "Division by zero is not allowed."
        }
    }
}
