//
//  ViewController.swift
//  CocoaMVCPractice
//
//  Created by 田澤歩 on 2021/04/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var contetView: CounterView!
    private(set) lazy var counterModel = CountModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @objc func handleCountChage(_ notification: Notification) {
        if let count = notification.object as? Int {
            contetView.render(count: count)
        }
    }
    
    @IBAction func OnPulusButtonTapped(_ sender: Any) {
        counterModel.countUp()
    }

}

