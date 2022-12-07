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
                TitleView()

                LazyVGrid(columns: columns) {
                    ForEach(0..<5) { _ in
                        Rectangle()
                            .frame(width: 250, height: 250)
                            .padding()
                            .foregroundColor(.indigo)
                    }
                    .padding()
                }
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

fileprivate struct TitleView: View {
    var body: some View {
        HStack {
            Text("🎨 Sketch")
                .font(.system(size: 42))
                .bold()

            Spacer()

            HStack {
                NavigationLink {
                    DrawingView()
                } label: {
                    Image(systemName: "plus")
                }
                .padding()

                Button {
                    // show settings
                } label: {
                    Image(systemName: "gear")
                }
            }
            .font(.title)
        }
        .padding()
    }
}
