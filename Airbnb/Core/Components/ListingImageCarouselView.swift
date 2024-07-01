//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 28/06/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "l1",
        "l2",
        "l3",
        "l4",
        "l5"
    ]
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
