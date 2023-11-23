//
//  Digit.swift
//  Calculator
//
//  Created by Venkata Tarun Kumar Mavillapalli on 23/11/23.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
//This Swift code defines an enumeration `Digit` representing numeric digits from zero to nine. Each case has a corresponding integer value, and the enumeration conforms to `CustomStringConvertible` to provide string representations of the digits. The enum is designed for use in a calculator app to represent individual numeric inputs.
