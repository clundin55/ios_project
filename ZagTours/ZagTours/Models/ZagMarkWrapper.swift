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
        zagMarks = [
            ZagMark(description: "Built in 1898 and formerly called the Administration Building, College Hall is Gonzaga's oldest and most storied hall.", googleMarkerDescription: "Tap me!",title: "College Hall", image: "college-hall", websiteLink: "http://tour.gonzaga.edu/tablet/buildings/CG/index.html", googleMarker: GMSMarker(), position: CLLocationCoordinate2D(latitude: 47.668326, longitude: -117.403052)),
            ZagMark(description: "Originally built in 1948 and extensively expanded and upgraded, the Herak Center serves as home to Gonzaga's School of Engineering and Applied Science, which offers degrees in civil, computer, electrical, and mechanical engineering, as well as engineering management and computer science.", googleMarkerDescription: "Tap me!",title: "Herak", image: "herak", websiteLink: "http://tour.gonzaga.edu/tablet/buildings/HK/index.html", googleMarker: GMSMarker(), position: CLLocationCoordinate2D(latitude: 47.666818, longitude: -117.402861)),
            ZagMark(description: "Gonzaga's first building awarded LEED Gold certification, PACCAR opened in 2008.", googleMarkerDescription: "Tap me!",title: "Paccar", image: "paccar", websiteLink: "http://tour.gonzaga.edu/tablet/buildings/PC/index.html", googleMarker: GMSMarker(), position: CLLocationCoordinate2D(latitude: 47.666418, longitude: -117.401898)),
            ZagMark(description: "Aluminum Jesus, or AJ, as the students call him, stands between DeSmet Hall and Welch Hall. He's pretty chill.", googleMarkerDescription: "Tap me!",title: "Aluminum Jesus", image: "aluminum-jesus", websiteLink: nil, googleMarker: GMSMarker(), position: CLLocationCoordinate2D(latitude: 47.667844, longitude: -117.400622)),
            ZagMark(description: "The mission of the John J. Hemmingson Center is to provide a warm and inviting atmosphere to all. The University Center is a meeting place for all students as well as faculty, staff, alumni and the guests of Gonzaga University.", googleMarkerDescription: "Tap me!",title: "Hemmingson Center", image: "hemm", websiteLink: "https://www.gonzaga.edu/about/offices-services/gonzaga-university-event-service-team/venues/john-j-hemmingson-center", googleMarker: GMSMarker(), position: CLLocationCoordinate2D(latitude: 47.667239, longitude: -117.399902))
        ]
        
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
