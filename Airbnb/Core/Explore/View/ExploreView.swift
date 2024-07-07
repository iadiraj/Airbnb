//
//  ExploreView.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 28/06/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExplorerViewModel(service: ExploreService())
//    @State private var searchText =
    var body: some View {
        NavigationStack {
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
                    .toolbar(.hidden, for: .tabBar)
            } else {
                ScrollView {
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    if viewModel.listings.isEmpty {
                        ProgressView(label: {
                            Text("Loading...!")
                        })
                        .progressViewStyle(.circular)
                    }
                    else{
                        LazyVStack(spacing: 32) {
                            ForEach(viewModel.listings) { listing in
                                NavigationLink(value: listing) {
                                    ListingItemView( listing: listing)
                                        .frame(height: 430)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                                
                            }
                        }
                        .padding()
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    ListingDetailView(listing: listing)
                }
            }
        }
    }
}


#Preview {
    ExploreView()
}
