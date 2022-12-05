//
//  CanvasView.swift
//  Sketchy
//
//  Created by Brittany Rima on 12/4/22.
//

import SwiftUI
import PencilKit

struct CanvasView: View {
    @Binding var canvasView: PKCanvasView
}

extension CanvasView: UIViewRepresentable {
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.tool = PKInkingTool(.pen, color: .gray, width: 10)
        #if targetEnvironment(simulator)
        canvasView.drawingPolicy = .anyInput
        #endif
        return canvasView
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) { }
}
