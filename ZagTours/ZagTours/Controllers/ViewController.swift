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

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let guLat = 47.6671926
        let guLong = -117.4045736
        
        let guCamera = GMSCameraPosition.camera(withLatitude: guLat, longitude: guLong, zoom: 20.0)
        let mapView = GMSMapView.map(withFrame: view.bounds, camera: guCamera)
        mapView.mapType = GMSMapViewType.satellite
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: guLat, longitude: guLong)
        marker.title = "Gonzaga University"
        marker.snippet = "Go zags"
        marker.icon = GMSMarker.markerImage(with: .green)
        marker.map = mapView
        
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
        view = mapView
        
    }


}

