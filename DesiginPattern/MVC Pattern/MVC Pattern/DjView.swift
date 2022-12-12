//
//  DjView.swift
//  MVC Pattern
//
//  Created by jc.kim on 12/12/22.
//

import Foundation
import UIKit

class DjView: BeatObserver, RateObserver {
    @IBOutlet weak var beatBar: UIView!
    @IBOutlet weak var rateOutputLabel: UILabel!
    @IBOutlet weak var beatBarWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var rateTextField: UITextField!
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var decreaseButton: UIButton!
    @IBOutlet weak var menuItem: UISegmentedControl!
    
    let model: BeatModelInterface
    let controller: ControllerInterface
    
    init(_ model: BeatModelInterface,_ controller: ControllerInterface) {
        self.model = model
        self.controller = controller
        
        setButton.addTarget(self, action: #selector(actionPerformed), for: .touchUpInside)
        increaseButton.addTarget(self, action: #selector(actionPerformed), for: .touchUpInside)
        decreaseButton.addTarget(self, action: #selector(actionPerformed), for: .touchUpInside)
        menuItem.addTarget(self, action: #selector(actionPerformed), for: .touchUpInside)
    }
    
    func updateBeat() {
        beatBarWidthConstraint.constant = UIScreen.main.bounds.width / 4
    }
    
    func updateRate() {
        let rate = model.getRate()
        if rate == 0 {
            rateOutputLabel.text = "offline"
        } else {
            rateOutputLabel.text = "Current Rate: \(model.getRate())"
        }
    }
    
//    @objc func menuItemChanged(_ sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//        case 0:
//        case 1:
//        case 2:
//        default:
//            break
//        }
//    }
    
    @objc func actionPerformed(_ tag: Int) {
        switch tag {
        case 11:
            if let str = rateOutputLabel.text, let rate = Float(str) {
                controller.setRate(rate)
            }
        case 12:
            controller.increaseRate()
        case 13:
            controller.decreaseRate()
        default:
            break
        }
    }
}
