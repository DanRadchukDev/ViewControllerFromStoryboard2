//
//  ViewController.swift
//  ViewControllerFromStoryboard2
//
//  Created by Dan Radchuk on 1/25/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "second") as? SecondViewController else {
            print ("failed to get vc from storyboard")
            return
        }
            
        present(vc, animated: true)
        
    }
    
}

