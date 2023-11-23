//
//  CalculatorButtonStyle.swift
//  Calculator
//
//  Created by Venkata Tarun Kumar Mavillapalli on 23/11/23.
// 

import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    
    var size: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var isWide: Bool = false
    
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .font(.system(size: 32, weight: .medium))
                .frame(width: size, height: size)
                .frame(maxWidth: isWide ? .infinity : size, alignment: .leading)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .overlay {
                    if configuration.isPressed {
                        Color(white: 1.0, opacity: 0.2)
                    }
                }
                .clipShape(Capsule())
    }
}

struct CalculatorButtonStyle_Previews: PreviewProvider {
    static let buttonType: ButtonType = .digit(.zero)
    
    static var previews: some View {
        Button(buttonType.description) { }
            .buttonStyle(CalculatorButtonStyle(
                size: 80,
                backgroundColor: buttonType.backgroundColor,
                foregroundColor: buttonType.foregroundColor,
                isWide: buttonType == .digit(.zero))
            )
            .padding()
    }
}
//This Swift code defines a custom `CalculatorButtonStyle` conforming to the `ButtonStyle` protocol for styling buttons in a Calculator app. It allows customization of button size, background color, foreground color, and wideness. The accompanying `CalculatorButtonStyle_Previews` struct demonstrates the styling on a preview button with specified characteristics.
