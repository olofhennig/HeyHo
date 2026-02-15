//
// Project:		HeyHoShape
// File:		HeyHoView.swift
// Created by:	Olof Hennig, 2026-02-13  
// Swift:		6.0


import SwiftUI

public struct HeyHoView: View {
	let fontSize: CGFloat
	public init(fontSize: CGFloat) {
		self.fontSize = fontSize
	}

	public var body: some View {
		Text("HEY HO!")
			.heyHoModifier(fontSize: fontSize)
	}
}

#Preview {
	HeyHoView(fontSize: 10)
}
