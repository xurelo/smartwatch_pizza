//
//  TipoQueso.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 30/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasaController: WKInterfaceController {

    var pizza : Pizza? = nil;
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza=context as? Pizza
        // Configure interface objects here.
    }

    @IBAction func gruesa() {
        self.pizza!.masa = "Gruesa";
        pushControllerWithName("TipoQueso", context: pizza);
    }
    @IBAction func crujiente() {
        self.pizza!.masa = "Crujiente";
        pushControllerWithName("TipoQueso", context: pizza);
    }
    @IBAction func delgada() {
        self.pizza!.masa = "Delgada";
        pushControllerWithName("TipoQueso", context: pizza);
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
