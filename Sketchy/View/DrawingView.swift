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
    @State var rendition: Rendition?

    var body: some View {
        NavigationStack {
            ZStack {
                CanvasView(canvasView: $canvasView, onSaved: saveDrawing)
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

                    Button(action: restoreDrawing) {
                        Image(systemName: "arrow.uturn.left")
                    }

                    Button(action: deleteDrawing) {
                       Image(systemName: "trash")
                    }
                }
            }
            .tint(.indigo)
        }
    }

    func saveDrawing() {
        let image = canvasView.drawing.image(from: canvasView.bounds,
                                             scale: UIScreen.main.scale)
        let rendition = Rendition(title: "Best Drawing",
                                  drawing: canvasView.drawing,
                                  image: image)
        self.rendition = rendition
    }

    func deleteDrawing() {
        canvasView.drawing = PKDrawing()
    }

    func restoreDrawing() {
        if let rendition = rendition {
            canvasView.drawing = rendition.drawing
        }
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
