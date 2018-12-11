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
    var image: String
    var websiteLink: String
    var googleMarker: GMSMarker
<<<<<<< HEAD
}

class ZagMarkWrapper {
    var zagMarks: [ZagMark] = []
    var currentZagMark: ZagMark? = nil
    
    func populateMapWithZagMarks(campusMap: GMSMapView) {
        let guLat = 47.6671926
        let guLong = -117.4045736
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: guLat, longitude: guLong)
        marker.title = "Gonzaga University"
        marker.snippet = "Go zags"
        marker.icon = GMSMarker.markerImage(with: .blue)
        marker.map = campusMap
        
        let tempMark = ZagMark(description: "Temp", title: "TempTitle", image: "None", websiteLink: "https://www.gonzaga.edu/about/offices-services/gonzaga-university-event-service-team/venues/john-j-hemmingson-center", googleMarker: marker)
        zagMarks.append(tempMark)
    }
=======
    var position: CLLocationCoordinate2D
>>>>>>> 33468db5fca218f0490c74f5b694c373fe8f1bb2
    
    init(description: String, googleMarkerDescription: String, title: String, image: String, websiteLink: String, googleMarker: GMSMarker, position: CLLocationCoordinate2D) {
        self.description = description
        self.googleMarkerDescription = googleMarkerDescription
        self.title = title
        self.image = image
        self.websiteLink = websiteLink
        self.googleMarker = googleMarker
        self.position = position
    }
}

