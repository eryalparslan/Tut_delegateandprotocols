//
//  ViewController.swift
//  Tut_delegateandprotocols
//
//  Created by ruroot on 9/22/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, myProtocol {

    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    func myDelegateMethod(mealName: String) {
        print(mealName)
        myImageView.image = UIImage(named: mealName)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSegue" {
            let vc = segue.destination as! SecondVC
            vc.delegate = self
        }
    }

    
}

