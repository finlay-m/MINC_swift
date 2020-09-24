//
//  ViewController.swift
//  MINC_swiftcode
//
//  Created by Finlay MacGregor on 9/24/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var addTextfield: UITextField!
    
    // can also say var thesum : Int = nil to be clear it is nil (or could add a value like = 0)
    var thesum : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        paintLayout()
        
    }

    @IBAction func addtoSum(_ sender: Any) {

        guard let numberToAdd = Int(addTextfield.text!) else {
            print("DÅLIG INMATNING")
            return // to throw is short for throw an error
        }
        
        if(thesum == nil) // this has to happen before you promise thesum!
        {
            thesum = 0
        }
        thesum = thesum! + numberToAdd // this is a variable that exists outside of the
        paintLayout()
        
        /*
        // optional upwrapping, tells the compiler to try do to this
        // addNumber is only accessible within the if statement
        if let addNumber = Int(addTextfield.text!) {
            
            if(thesum == nil) // this has to happen before you promise thesum!
                   {
                       thesum = 0
                   }
            
            // so if Int(addTextfield.text! is possible aka not nil, then it's value is assigned to addNumber and the function runs
            thesum = thesum! + addNumber
            paintLayout()
            
        } else {
            print("FELAKTIG INMATNING")
            // return
        }
        */
        
        addTextfield.text = ""
    
    }
    
    @IBAction func resetSum(_ sender: Any) {
        thesum = nil
        paintLayout()
    }
    
    func paintLayout()
    {
        if (thesum == nil){
        sumLabel.text = "Skriv i siffra"
        } else {
            sumLabel.text = String(thesum!)
        }
    }
    
}

