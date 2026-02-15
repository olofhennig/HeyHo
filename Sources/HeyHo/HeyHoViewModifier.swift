//
// Project:		HeyHoShape
// File:		HeyHoViewModifier.swift
// Created by:	Olof Hennig, 2026-02-13  
// Swift:		6.0


import SwiftUI

public struct HeyHoViewModifier: ViewModifier {
	public let fontSize: CGFloat
	public func body(content: Content) -> some View {
		content
			.scaleEffect(x: 1, y: 1.4)
			.font(.system(size: fontSize))
			.fontWeight(.bold)
			.foregroundStyle(.white)
			.padding(10)
			.padding(.trailing)
			.padding(.leading, 6)
			.background(.red)
			.overlay {
				HeyHoShape().stroke(.red)
			}
			.clipShape(HeyHoShape())
	}
}

extension View {
	public func heyHoModifier(fontSize: CGFloat) -> some View {
		modifier(HeyHoViewModifier(fontSize: fontSize))
	}
}

#Preview {
	HeyHoView(fontSize: 10)
}
