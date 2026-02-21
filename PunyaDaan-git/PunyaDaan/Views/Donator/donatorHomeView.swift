//
//  donatorHomeView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct donatorHomeView: View {
    let religiousPlaces = ["Place1", "Place2", "Place3"]
    let nearbyGaushalas = ["Gaushala1", "Gaushala2", "Gaushala3"]
    let recentPunyaDaans = ["Place2", "Gaushala3", "carousel-2"]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {

                    TopBannerView()
                    CategorySection()

                    HorizontalScrollSection(title: "Nearby Religious Places" , items : religiousPlaces)
                    HorizontalScrollSection(title: "Nearby Gaushalas" , items : nearbyGaushalas)
                    HorizontalScrollSection(title: "Recent PunyaDaans" , items : recentPunyaDaans)
                }
                .padding(.vertical)
            }
            .navigationTitle("PunyaDaan")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: donatorAccountView()) {
                        Image(systemName: "person.fill")
                            .font(.system(size: 16))
                            .foregroundStyle(.white)
                            .frame(width: 36, height: 36)
                            .background(Color.orange)
                            .clipShape(Circle())
                    }
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .foregroundStyle(.orange)
                    }
                }
            }
        }
    }
}
// MARK: - Reusable Components

struct TopBannerView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.orange.opacity(0.2))
                .frame(height: 200)
            
            
            carouselView()
            
//            VStack {
//                Text("यह प्राचीन सिद्ध देवी मंदिर लगभग ढाई सौ साल पुराना है")
//                    .font(.headline)
//                    .multilineTextAlignment(.center)
//                    .padding()
//                
//                Button(action: {}) {
//                    Text("DONATE NOW")
//                        .font(.caption)
//                        .bold()
//                        .foregroundStyle(.white)
//                        .padding(.horizontal, 20)
//                        .padding(.vertical, 10)
//                        .background(Color.red)
//                        .clipShape(Capsule())
//                }
//                .padding(.bottom, 10)
//            }
        }
        .padding(.horizontal)
    }
}

struct CategorySection: View {
    let categories = [
        ("KanyaDaan", "hands.sparkles.fill"),
        ("Religious Places", "building.columns.fill"),
        ("Charity", "heart.fill"),
        ("Gaushala", "leaf.fill"),
        ("YogDaan", "figure.mind.and.body")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(categories, id: \.0) { category in
                    VStack {
                        Circle()
                            .fill(Color.orange.opacity(0.2))
                            .frame(width: 60, height: 60)
                            .overlay(
                                Image(systemName: category.1)
                                    .foregroundStyle(.orange)
                                    .font(.title2)
                            )
                        Text(category.0)
                            .font(.caption)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct HorizontalScrollSection: View {
    
    let title: String
    let items: [String]   // ← dynamic data
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                
                Spacer()
                
                Button("VIEW ALL") {}
                    .font(.caption)
                    .foregroundStyle(.red)
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    
                    ForEach(items, id: \.self) { item in
                        Image(item)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 100)
                            .clipped()
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    donatorHomeView()
}
