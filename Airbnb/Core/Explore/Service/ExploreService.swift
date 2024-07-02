//
//  ExploreService.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import Foundation
class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
    }
}
