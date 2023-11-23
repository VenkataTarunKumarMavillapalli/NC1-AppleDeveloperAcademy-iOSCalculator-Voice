//
//  ButtonType.swift
//  Calculator
//
//  Created by Venkata Tarun Kumar Mavillapalli on 23/11/23.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable, CustomStringConvertible {
    case digit(_ digit: Digit)
    case operation(_ operation: ArithmeticOperation)
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String {
        switch self {
        case .digit(let digit):
            return digit.description
        case .operation(let operation):
            return operation.description
        case .negative:
            return "+/-"
        case .percent:
            return "%"
        case .decimal:
            return "."
        case .equals:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .allClear, .clear, .negative, .percent:
            return Color(.lightGray)
        case .operation, .equals:
            return .orange
        case .digit, .decimal:
            return .secondary
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .allClear, .clear, .negative, .percent:
            return .black
        default:
            return .white
        }
    }
}
// This Swift code defines an enumeration `ButtonType` representing various button types for a calculator app, including digits, arithmetic operations, and special functions like negation, percentage, decimal, equals, all clear, and clear. Each case provides a description, background color, and foreground color to customize the appearance of the corresponding button in the user interface.
