//
//  CounterView.swift
//  CocoaMVCPractice
//
//  Created by 田澤歩 on 2021/04/19.
//

import UIKit

class CounterView: UIView {

    @IBOutlet weak var countLabel: UILabel!
    public func render(count: Int) {
        countLabel.text = String(count)
    }
}
