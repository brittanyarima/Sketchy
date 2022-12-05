//
//  DrawingView.swift
//  Sketchy
//
//  Created by Brittany Rima on 12/4/22.
//

import SwiftUI
import PencilKit

struct DrawingView: View {
    @State private var canvasView = PKCanvasView()

    var body: some View {
        NavigationStack {
            ZStack {
                CanvasView(canvasView: $canvasView)
                    .padding(20)
                    .background(.thinMaterial)

            }
            .navigationTitle("Sketchy")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "plus")
                    }

                    Button {

                    } label: {
                        Image(systemName: "eye")
                    }
                }

                HStack {
                    Button {

                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }

                    Button {

                    } label: {
                        Image(systemName: "arrow.uturn.left")
                    }

                    Button {
                        deleteDrawing()
                    } label: {
                        Image(systemName: "trash")
                    }
                }
            }
            .tint(.indigo)
        }
    }

    func saveDrawing() {
        //
    }

    func deleteDrawing() {
        canvasView.drawing = PKDrawing()
    }

    func restoreDrawing() {
        //
    }

    func shareDrawing() {
        //
    }

}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
