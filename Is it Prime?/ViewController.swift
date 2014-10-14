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
                prime = self.isPrime(number!)
                
                if(prime) {
                    lblMessage.text = "\(number!) is Prime!"
                }else{
                    lblMessage.text = "\(number!) is not Prime!"
                }
            }
            
        }else{
            lblMessage.text = "Please enter your number"
        }
        
    }
    
    func isPrime(number: Int) -> Bool {
    
        var isPrime = true
        let MIN_NUM = 2
        let MAX_NUM = Int(ceil(sqrt(Double(number))))
        //let modulus = number % 2
        
        if number == 1 {
            isPrime = false
        }else if number == 2{
            isPrime = true
        }else{
            //Enhancement
            //var max =
            //max = ceil(max)
            println("Max: \(MAX_NUM)")
            //let maxInt = Int(max)
            
            for var i = MIN_NUM; i <= MAX_NUM; ++i {
                
                var rest = number % i
                
                println("\(number) % \(i) = \(rest)")
                
                if rest == 0 {
                    //Not prime
                    isPrime = false
                    break
                }
            }
            
        }
        
        return isPrime;
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

