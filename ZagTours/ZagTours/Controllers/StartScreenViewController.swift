//
//  StartScreenViewController.swift
//  ZagTours
//
//  Created by Carl Lundin on 11/24/18.
//  Copyright © 2018 Carl Lundin. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "qrSegue" {
            let hasCamera = UIImagePickerController.isSourceTypeAvailable(.camera)
            
            if !hasCamera {
                let noCameraAlert = UIAlertController(title: "Scanning not supported", message: "Your device does not support scanning a QR code because it does not have a Camera or the app does not have permission to use it.", preferredStyle: .alert)
                noCameraAlert.addAction(UIAlertAction(title: "OK", style: .default))
                present(noCameraAlert, animated: true)
            }

            return hasCamera
        }
        
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
