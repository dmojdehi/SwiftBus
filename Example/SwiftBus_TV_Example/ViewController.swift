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
        let route = TransitRoute(routeTag: "36", agencyTag: "sf-muni")
        route.configuration(){ (result) in

            switch result {
            case let .success(loadedRoute):
                let count2 = loadedRoute.routePath.count
                print("Got \(count2) routePaths!")

            case let .error(error):
                print("error loading the route: \(error.localizedDescription)")

            }

        }
    }
        
    
}

