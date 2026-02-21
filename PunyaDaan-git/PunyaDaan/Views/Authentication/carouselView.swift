//
//  carouselView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI
internal import Combine

struct carouselView: View {
    
    let images = ["carousel-1", "carousel-2", "carousel-3", "carousel-4", "carousel-5"]
    
    @State private var currentIndex = 0
    
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    
    var body: some View {
        TabView(selection: $currentIndex) {
            
            ForEach(0..<images.count, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFill()
                    .tag(index)
                    .clipped()
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
        .frame(height: 200)
        .onReceive(timer) { _ in
            withAnimation {
                currentIndex = (currentIndex + 1) % images.count
            }
        }
    }
}

#Preview {
    carouselView()
}
