//
//  ZagMarkWrapper.swift
//  ZagTours
//
//  Created by Carl Lundin on 12/9/18.
//  Copyright © 2018 Carl Lundin. All rights reserved.
//

import Foundation
import GoogleMaps
import GooglePlaces

class ZagMarkWrapper {
    var zagMarks: [ZagMark] = []
    var currentZagMark: ZagMark? = nil
    
    func populateMapWithZagMarks(campusMap: GMSMapView) {
        for zagmark in zagMarks{
            zagmark.googleMarker.map = campusMap
        }
    }
    
    func createMarkers() {
        zagMarks = [ZagMark(description: "Temp", googleMarkerDescription: "Insert detailed description",title: "Gonzaga University", image: "None", websiteLink: "No website", googleMarker: GMSMarker(), position: CLLocationCoordinate2D(latitude: 47.6671926, longitude: -117.4045736))]
        
        for zagmark in zagMarks{
            createGMapMarkerFromZagMark(zagmark: zagmark)
        }
    }
    
    func createGMapMarkerFromZagMark(zagmark: ZagMark) {
        let newMarker = GMSMarker()
        newMarker.icon = GMSMarker.markerImage(with: .blue)
        newMarker.position = zagmark.position
        newMarker.title = zagmark.title
        newMarker.snippet = zagmark.googleMarkerDescription
        zagmark.googleMarker = newMarker
    }
    
    func getCurrentMarkerFromTitle() -> ZagMark?{
        return currentZagMark
    }
    
    func setCurrentMarkerFromTitle(title: String){
        for zagMark in zagMarks {
            if zagMark.googleMarker.title == title {
                currentZagMark = zagMark
            }
        }
    }
}
