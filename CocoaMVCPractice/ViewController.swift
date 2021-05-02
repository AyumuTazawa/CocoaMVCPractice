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
        
        counterModel.notificationCounter.addObserver(self, selector: #selector(self.handleCountChage(_:)), name: Notification.Name(rawValue: CountModel.notifcationName), object: nil)
        
    }

    @objc func handleCountChage(_ notification: Notification) {
        if let count = notification.object as? Int {
            contetView.render(count: count)
        }
    }
    
    @IBAction func OnPlusButtonTapped(_ sender: Any) {
        counterModel.countUp()
    }
    
    @IBAction func OnMinusButtonTapped(_ sender: Any) {
        counterModel.countDown()
    }
}

