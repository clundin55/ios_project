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

struct ZagMark {
    var description: String
    var title: String
    var image: String
    var websiteLink: String
    var googleMarker: GMSMarker
}

struct ZagMarkWrapper {
    var zagMarks: [ZagMark] = []
    var currentZagMark: ZagMark? = nil
    
    mutating func populateMapWithZagMarks(campusMap: GMSMapView) {
        let guLat = 47.6671926
        let guLong = -117.4045736
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: guLat, longitude: guLong)
        marker.title = "Gonzaga University"
        marker.snippet = "Go zags"
        marker.icon = GMSMarker.markerImage(with: .blue)
        marker.map = campusMap
        
        let tempMark = ZagMark(description: "Temp", title: "TempTitle", image: "None", websiteLink: "No website", googleMarker: marker)
        zagMarks.append(tempMark)
    }
    
    func getCurrentMarkerFromTitle() -> ZagMark?{
        return currentZagMark
    }
    
    mutating func setCurrentMarkerFromTitle(title: String){
        for zagMark in zagMarks {
            if zagMark.title == title {
                currentZagMark = zagMark
            }
        }
    }
}
