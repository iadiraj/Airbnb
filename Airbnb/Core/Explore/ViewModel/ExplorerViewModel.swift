//
//  ExplorerViewModel.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import Foundation
class ExplorerViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    init(service: ExploreService) {
        self.service = service
    }
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: Failed to fetch listing with error: \(error.localizedDescription)")
        }
    }
}
