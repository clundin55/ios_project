//
//  ZagMark.swift
//  ZagTours
//
//  Created by Carl Lundin on 11/25/18.
//  Copyright © 2018 Carl Lundin. All rights reserved.
//

import Foundation
import MapKit
import GoogleMaps

class ZagMark {
    var description: String
    var googleMarkerDescription: String 
    var title: String
    var image: String?
    var websiteLink: String
    var googleMarker: GMSMarker
    var position: CLLocationCoordinate2D
    
    init(description: String, googleMarkerDescription: String, title: String, image: String?, websiteLink: String, googleMarker: GMSMarker, position: CLLocationCoordinate2D) {
        self.description = description
        self.googleMarkerDescription = googleMarkerDescription
        self.title = title
        self.image = image
        self.websiteLink = websiteLink
        self.googleMarker = googleMarker
        self.position = position
    }
}

