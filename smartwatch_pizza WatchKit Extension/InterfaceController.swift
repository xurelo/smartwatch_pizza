//
//  InterfaceController.swift
//  smartwatch_pizza WatchKit Extension
//
//  Created by Francisco Manuel Romero on 30/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var pizza: Pizza = Pizza()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    @IBAction func medium() {
        pizza.size = "Mediana";
        pushControllerWithName("TipoMasa", context: pizza);
    }
    @IBAction func small() {
        pizza.size = "Pequeña"
        pushControllerWithName("TipoMasa", context: pizza);
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    @IBAction func big() {
        pizza.size = "Grande";
        pushControllerWithName("TipoMasa", context: pizza);
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
