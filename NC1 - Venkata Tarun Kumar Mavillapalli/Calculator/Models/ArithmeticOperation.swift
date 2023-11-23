//
//  ArithmeticOperation.swift
//  Calculator
//
//  Created by Venkata Tarun Kumar Mavillapalli on 23/11/23.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "−"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
//This Swift code defines an enumeration `ArithmeticOperation` representing basic arithmetic operations: addition, subtraction, multiplication, and division. Each case provides a string representation for the corresponding operation, facilitating their use in a calculator app to represent mathematical operations. The enum conforms to `CustomStringConvertible` for easy conversion to string values.
