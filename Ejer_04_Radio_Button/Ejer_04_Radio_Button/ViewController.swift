//
//  ViewController.swift
//  Ejer_04_Radio_Button
//
//  Created by Luis José Sánchez Carrasco on 4/6/17.
//  Copyright © 2017 Luis José Sánchez Carrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var op1: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resta: UIButton!
    @IBOutlet weak var suma: UIButton!
    
    
    @IBOutlet weak var ope2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()        // Do any additional setup after loading the view, typically from a nib.
            }

    
    @IBAction func text1Changed(_ sender: Any) {
        
    }
    
    
    @IBAction func resta(_ sender: Any) {
        
        
        if (vacio())
        {
            return
        }
        let n1:Int? = Int(op1.text!)
        let n2:Int? = Int(ope2.text!)
        
        let re:Int?=n1!-n2!
        
        result.text=String(re!)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func suma(_ sender: Any) {
        if (vacio())
        {
            return
        }
        let n1:Int? = Int(op1.text!)
        let n2:Int? = Int(ope2.text!)
        
        let re:Int?=n1!+n2!
        
        result.text=String(re!)
    }
    
    
    func vacio() -> Bool {
    
    if ((op1.text?.isEmpty)! || (ope2.text?.isEmpty)!) {return true}
    else {
        return false}
}
    

}

