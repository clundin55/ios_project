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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        campusMap.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
//        TODO: Get current user location at load time
        let guLat = 47.6671926
        let guLong = -117.4045736

        let guCamera = GMSCameraPosition.camera(withLatitude: guLat, longitude: guLong, zoom: 20.0)
        
        campusMap.camera = guCamera
        campusMap.mapType = GMSMapViewType.satellite

        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: guLat, longitude: guLong)
        marker.title = "Gonzaga University"
        marker.snippet = "Go zags"
        marker.icon = GMSMarker.markerImage(with: .green)
        marker.map = campusMap
        
        campusMap.isMyLocationEnabled = true
        campusMap.settings.myLocationButton = true
    }
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        print(marker.title)
        // TODO: need to send current marker or some id to arview so we know which ar object to make
        self.performSegue(withIdentifier: "arViewFromMarker", sender: nil)
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "arViewFromMarker" {
            if let arViewDestination = segue.destination as? TourViewController {
                print("segue was succesful")
            }
        }
    }
}

