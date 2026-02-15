//
// Project:		HeyHoShape
// File:		HeyHoShape.swift
// Created by:	Olof Hennig, 2026-02-13  
// Swift:		6.0


import SwiftUI

public struct HeyHoShape: Shape {
	public func path(in rect: CGRect) -> Path {
		var path = Path()

		path.move(to: CGPoint(x: rect.minX, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.maxX - 16, y: rect.minY))
		path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
		path.addLine(to: CGPoint(x: rect.maxX - 16 , y: rect.maxY))
		path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
		path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

		return path
	}
}

#Preview {
	HeyHoView(fontSize: 18)
}

