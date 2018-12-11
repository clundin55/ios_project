//
//  TourArViewController.swift
//  ZagTours
//
//  Created by Carl Lundin on 11/25/18.
//  Copyright © 2018 Carl Lundin. All rights reserved.
//

import UIKit

class TourViewController: UIViewController {
    var marker: ZagMark? = nil

    @IBOutlet weak var markerNameLabel: UILabel!
    @IBOutlet weak var markerImageView: UIImageView!
    @IBOutlet weak var markerDecriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let marker = self.marker {
            updateLabels(mark: marker)
        }
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func websiteButtonPressed(_ sender: UIButton) {
        print("Button pressed")
        if let marker = marker, let linkString = marker.websiteLink {
            if let link = URL(string: linkString) {
                UIApplication.shared.open(link)
            }
        }
        else {
            let noLinkAlert = UIAlertController(title: "No website", message: "Sorry this location has no associated website.", preferredStyle: .alert)
            noLinkAlert.addAction(UIAlertAction(title: "OK", style: .default))
            present(noLinkAlert, animated: true)
        }
    }
    
    func updateLabels(mark: ZagMark) {
        self.markerNameLabel.text = mark.title
        self.markerDecriptionLabel.text = mark.description
        if let imageName = marker?.image {
            self.markerImageView.image = UIImage(named: imageName)
        }
        
    }
}
