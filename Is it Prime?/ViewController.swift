//
//  ViewController.swift
//  Is it Prime?
//
//  Created by Gerardo Camilo on 12/10/14.
//  Copyright (c) 2014 ___GRCS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var txtInput: UITextField!
    
    @IBAction func btnCalculate(sender: AnyObject) {
        var prime = true
        var number = txtInput.text.toInt()
        
        if (number != nil){
            println(number!)
            
            if number < 1 {
                
                lblMessage.text = "Please enter a positive number."
            
            }else{
                
                if number == 1 {
                   lblMessage.text = "1 is not prime."
                }else{
                    //Enhancement
                    var max = sqrt(Double(number!))
                    max = ceil(max)
                    println("Max: \(Int(max))")
                    let maxInt = Int(max)
                    
                    for var i=2; i < maxInt; ++i {
                        
                        var rest = number! % i
                        println("\(number!) % \(i) = \(rest)")

                        if rest == 0 {
                            //Not prime
                            prime = false
                            break
                        }
                    }
                 
                    if(prime) {
                        lblMessage.text = "\(number!) is Prime!"
                    }else{
                        lblMessage.text = "\(number!) is not Prime!"
                    }
                }
                
            }
            
        }else{
            lblMessage.text = "Please enter your number"
        }
        
    }
    
    func isPrime(number: Int) -> Bool {
    
        var isPrime = false
        let MIN_NUM = 3
        let MAX_NUM = number - 1
        let modulus = number % 2
        
        
        
        return true;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

