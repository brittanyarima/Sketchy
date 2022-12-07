//
//  HomeView.swift
//  Sketchy
//
//  Created by Brittany Rima on 12/7/22.
//

import SwiftUI

struct HomeView: View {
    let columns = Array(repeating: GridItem(.flexible()), count: 2)

    var body: some View {
        NavigationStack {
            VStack {
                LazyVGrid(columns: columns) {
                    ForEach(0..<5) { _ in
                        Rectangle()
                            .frame(width: 250, height: 250)
                            .padding()
                    }
                    .padding()
                }
                Spacer()

            }
            .navigationTitle("🎨 Sketch")
            .toolbar {
                HStack {
                    Button {
                        // start new sketch
                    } label: {
                        Image(systemName: "plus")
                    }

                    Button {
                        // show settings screen
                    } label: {
                        Image(systemName: "gear")
                    }
                }
                .font(.title2)
                .padding(.top, 100)
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
