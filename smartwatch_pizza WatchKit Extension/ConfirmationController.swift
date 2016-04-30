//
//  ConfirmationController.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 30/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmationController: WKInterfaceController {
    var pizza : Pizza? = nil;

    
    @IBOutlet var textLabel: WKInterfaceLabel!
    
    @IBAction func cancelar() {
        pushControllerWithName("Main", context: nil);
    }
    @IBAction func aceptar() {
        pushControllerWithName("Result", context: nil);
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza=context as? Pizza
        var text="Tamaño:"+(pizza?.size)!+"\n";
        text+="Masa:"+(pizza?.masa)!+"\n";
        text+="Queso:"+(pizza?.cheese)!+"\n";
        text+="Ingr:"+(pizza?.ingredients)!+"\n";
        textLabel.setText(text);
        
        // Configure interface objects here.
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
