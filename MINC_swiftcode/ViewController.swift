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
    
    // can also say var thesum : Int = 0
    var thesum : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        paintLayout()
        
    }

    @IBAction func addtoSum(_ sender: Any) {

        // optional upwrapping, tells the compiler to try do to this,
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
        
        addTextfield.text = ""
        
        
        // WRONG WAY 1: the ! promises a value, this is terrible code practice: thesum = thesum! + Int(addTextfield.text!)!
        // WRONG WAY 2: the problem with this text is you will get error if you push button when text field is blank: var numberToAdd = Int(addTextfield.text!)!
        /* WRONG WAY 3: (all this is covered by the if let phrase above)
        var numberToAdd = Int(addTextfield.text!) // we got rid of the second !
        if(numberToAdd == nil){
            print("FELAKTIG INMATNING")
            return // this ends the addtoSum function and prevent crashing error
        }
        thesum = thesum! + numberToAdd!
        */
        
    
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

