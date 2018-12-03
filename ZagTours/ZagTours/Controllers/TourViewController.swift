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

        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    @IBAction func websiteButtonPressed(_ sender: UIButton) {
        if let marker = marker {
            // TODO: Link to Gonzaga Website for URL
        }
    }
    
    func updateLabels(mark: ZagMark) {
        self.markerNameLabel = mark.title
        self.markerImageView = UIImage(named: mark.image)
        self.markerDecriptionLabel = mark.description
        
    }
}
