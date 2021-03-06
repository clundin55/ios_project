//
//  ViewController.swift
//  ZagTours
//
//  Created by Carl Lundin on 11/24/18.
//  Copyright © 2018 Carl Lundin. All rights reserved.
//

import UIKit
import GooglePlaces
import GoogleMaps
import MapKit


class GoogleMapsViewController: UIViewController, GMSMapViewDelegate {
    
    @IBOutlet weak var campusMap: GMSMapView!
    var zagmarkwrapper = ZagMarkWrapper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        campusMap.delegate = self        
        
        let guLat = 47.6683831
        let guLong = -117.4029954

        let guCamera = GMSCameraPosition.camera(withLatitude: guLat, longitude: guLong, zoom: 18.0)
        
        campusMap.camera = guCamera
        campusMap.mapType = GMSMapViewType.satellite
        campusMap.isMyLocationEnabled = true
        campusMap.settings.myLocationButton = true
        
        zagmarkwrapper.createMarkers()
        zagmarkwrapper.populateMapWithZagMarks(campusMap: campusMap)
    }
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        zagmarkwrapper.setCurrentMarkerFromTitle(title: marker.title!)
        self.performSegue(withIdentifier: "tourViewSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "tourViewSegue" {
            if let tourViewController = segue.destination as? TourViewController {
                tourViewController.marker = zagmarkwrapper.getCurrentMarkerFromTitle()
            }
        }
    }
}

