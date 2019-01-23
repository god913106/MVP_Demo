//
//  ViewController.swift
//  MVP_Demo
//
//  Created by 洋蔥胖 on 2019/1/23.
//  Copyright © 2019 ChrisYoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GreetingView {
 
    @IBOutlet weak var mvpLabel: UILabel!
    var presenter: GreetingPresenter?
    var model : Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Presenter的初始化, 把View 和 Model關聯起來
        model = Person(firstName: "Chris", lastName: "Yang")
        presenter = GreetingPresenter(view: self, person: self.model!)
 
    }

    @IBAction func onClick(_ sender: Any) {
        self.presenter?.showGreeting()
    }
   
    func setGreeting(greeting: String) {
        self.mvpLabel.text = greeting
    }
}

