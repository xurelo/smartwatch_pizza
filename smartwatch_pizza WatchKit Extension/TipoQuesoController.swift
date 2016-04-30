//
//  TipoQueso.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 30/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoController: WKInterfaceController {

    var pizza : Pizza? = nil;
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza=context as? Pizza
        
        // Configure interface objects here.
    }


    @IBAction func sinqueso() {
        self.pizza!.cheese = "Sin queso";
        pushControllerWithName("Ingredientes", context: pizza);
    }
    @IBAction func parmesano() {
        self.pizza!.cheese = "Parmesano";
        pushControllerWithName("Ingredientes", context: pizza);
    }
    
    @IBAction func cheddar() {
        self.pizza!.cheese = "Cheddar";
        pushControllerWithName("Ingredientes", context: pizza);
    }
    @IBAction func mozarella() {
        self.pizza!.cheese = "Mozarella";
        pushControllerWithName("Ingredientes", context: pizza);
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
