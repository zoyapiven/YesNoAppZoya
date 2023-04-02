//
//  ViewController.swift
//  RandomAnswerApp
//
//  Created by Miroslav Deryuga on 01.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func answerButtonAction(_ sender: Any) {
        let answer = Bool.random()
        answerLabel.text = ""
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.answerLabel.text = answer ? "Yes" : "No"
        }
    }
}



//
