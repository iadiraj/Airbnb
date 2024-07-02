//
//  DeveloperPreview.swift
//  AirbnbClone
//
//

import Foundation

class DeveloperPreview {
    static var shared = DeveloperPreview()
    var listing: [Listing] = [
        
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Michael Scott", ownerImageUrl: "michael", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -80.1936, imageURLs: ["l1","l2","l3","l4, l5"], address: "124 Main st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.wifi,.alarmSystem,.balcony,.laundry,.tv], type: .villa),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Harvey specter", ownerImageUrl: "harvey_specter", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 763, latitude: 34.2, longitude: -118.0426, imageURLs: ["l2","l4","l3","l1, l5"], address: "124 Main st", city: "Los angeles", state: "California", title: "Beautiful los angeles home in malibu", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.wifi,.pool,.tv], type: .apartment),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, ownerName: "Harvey specter", ownerImageUrl: "harvey_specter", numberOfBedrooms: 4, numberOfBathrooms: 3, numberOfGuests: 4, numberOfBeds: 4, pricePerNight: 567, latitude: 25.7850, longitude: -80.1936, imageURLs: ["l3","l5","l4","l1, l2"], address: "124 Main st", city: "Miami", state: "Florida", title: "Miami Villa", rating: 4.86, features: [.selfCheckIn,.superHost], amenities: [.wifi,.alarmSystem,.balcony,.laundry,.tv], type: .villa)
        
    ]
}
