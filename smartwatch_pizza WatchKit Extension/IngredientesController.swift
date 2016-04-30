//
//  TipoQueso.swift
//  pizza_app
//
//  Created by Francisco Manuel Romero on 30/04/16.
//  Copyright © 2016 Francisco Manuel Romero. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {

    var pizza : Pizza? = nil;
    var jamon: Bool = false;
    var pimiento: Bool = false;
    var pepperoni: Bool = false;
    var salchicha: Bool = false;
    var aceituna: Bool = false;
    var cebolla: Bool = false;
    var anchoa: Bool = false;
    var pavo: Bool = false;
    
    @IBAction func jamon(value: Bool) {
        self.jamon = value;
    }
    
    @IBAction func pepperoni(value: Bool) {
        self.pepperoni = value;
    }
    @IBAction func pavo(value: Bool) {
        self.pavo = value;
    }
    @IBAction func salchicha(value: Bool) {
        self.salchicha = value;
    }
    @IBAction func aceituna(value: Bool) {
        self.aceituna = value;
    }
    @IBAction func cebolla(value: Bool) {
        self.cebolla = value;
    }
    @IBAction func pimiento(value: Bool) {
        self.pimiento = value;
    }
    @IBAction func anchoa(value: Bool) {
        self.anchoa = value;
    }

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        self.pizza=context as? Pizza
        // Configure interface objects here.
    }
    
    func checkIngredients() -> (number:Int, text:String){
        var ingr:String = "";
        var number : Int = 0;
        if (jamon) {
            ingr+="Jamón\n";
            number+=1;
        }
        if (pimiento) {
            ingr+="Pimiento\n";
            number+=1;
        }
        if (cebolla) {
            ingr+="Cebolla\n";
            number+=1;
        }
        if (aceituna) {
            ingr+="Aceitunas\n";
            number+=1;
        }
        if (salchicha) {
            ingr+="Salchicha\n";
            number+=1;
        }
        if (pavo) {
            ingr+="Pavo\n";
            number+=1;
        }
        if (pepperoni) {
            ingr+="Pepperoni\n";
            number+=1;
        }
        if (anchoa) {
            ingr+="Anchoas\n";
            number+=1;
        }
        return (number, ingr);
    }


    @IBAction func next() {
        let ing = checkIngredients();
        if (ing.number > 0 && ing.number < 6) {
            pizza!.ingredients = ing.text;
            pushControllerWithName("Confirmation", context: pizza);
            //warning.text = "";
            //self.navigationController!.pushViewController(conf, animated: true)
        } else {
            //warning.text = "Escoge de 1 a 5 ingredientes";
        }
        
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
