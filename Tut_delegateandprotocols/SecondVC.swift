//
//  SecondVC.swift
//  Tut_delegateandprotocols
//
//  Created by ruroot on 9/22/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

protocol myProtocol {
    func myDelegateMethod(mealName: String)
}

class SecondVC: UIViewController {
    
    var delegate: myProtocol?
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstImageView.image = UIImage(named: "doner")
        secondImageView.image = UIImage(named: "kokorec")
        
    }
    @IBAction func firstTapped(_ sender: UITapGestureRecognizer) {
        delegate?.myDelegateMethod(mealName: "doner")
        dismiss(animated: true)
    }
    
    @IBAction func secondTapped(_ sender: UITapGestureRecognizer) {
        delegate?.myDelegateMethod(mealName: "kokorec")
        dismiss(animated: true)
    }
 
}
