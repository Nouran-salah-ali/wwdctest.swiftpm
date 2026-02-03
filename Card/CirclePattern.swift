//
//  CirclePattern.swift
//  wwdctest
//
//  Created by nouransalah on 14/08/1447 AH.
//
import SwiftUI
struct CirclePattern: View {
    var body: some View {
        Canvas { context, size in
            let circleSize: CGFloat = 4
            
            let spacing: CGFloat = 18

            for x in stride(from: 0, to: size.width, by: spacing) {
                for y in stride(from: 0, to: size.height, by: spacing) {
                    let rect = CGRect(
                        x: x,
                        y: y,
                        width: circleSize,
                        height: circleSize
                    )
                    context.fill(
                        Path(ellipseIn: rect),
                        with: .color(Color.white.opacity(0.15))
                    )
                }
            }
        }
    }
}
