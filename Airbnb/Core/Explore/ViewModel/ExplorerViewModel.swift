//
//  ExplorerViewModel.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import Foundation

class ExplorerViewModel: ObservableObject {
    @Published var searchLocation = ""
    @Published var listings = [Listing]() // Publishing changes from background threads is not allowed; make sure to publish values from the main thread (via operators like receive(on:)) on model updates.
    var fetchedListing = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.fetchedListing = try await service.fetchListing()
            self.listings = self.fetchedListing
        } catch {
            print("DEBUG: Failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingForLocation() {
        let filteredListings = listings.filter {
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        }
        
        self.listings = filteredListings.isEmpty ? fetchedListing : filteredListings
    }
}
