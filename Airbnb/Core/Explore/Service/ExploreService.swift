//
//  ExploreService.swift
//  Airbnb
//
//  Created by ADITYA RAJ on 02/07/24.
//

import Foundation

class ExploreService {
    
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
        
    }
    
}
