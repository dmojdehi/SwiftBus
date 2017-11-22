//
//  ViewController.swift
//  SwiftBus_TV_Example
//
//  Created by David Mojdehi on 11/21/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import SwiftBus

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.agencyListTouched()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func agencyListTouched() {
        SwiftBus.shared.transitAgencies() { result in
            switch result {
            case let .success(agencies):
                let agenciesString = "Number of agencies loaded: \(agencies.count)"
                let agencyNamesString = agencies.map({_, agency in "\(agency.agencyTitle)"})
                
                print("-----")
                print(agenciesString)
                print(agencyNamesString)
                
                //self.showAlertControllerWithTitle(agenciesString, message: "\(agencyNamesString)")
            case let .error(error):
                print("error loading the agency list: \(error.localizedDescription)")
                //self.showAlertControllerWithTitle("Error", message: error.localizedDescription)
                break
            }
        }
    }

}

