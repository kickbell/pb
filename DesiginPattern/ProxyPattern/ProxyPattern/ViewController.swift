//
//  ViewController.swift
//  ProxyPattern
//
//  Created by jc.kim on 12/14/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageProxy = ImageProxy(url: URL(string: "https://picsum.photos/5000")!)
        
        view.addSubview(imageProxy.placeholderView)
        view.addSubview(imageProxy.realView)
        
        imageProxy.draw()
    }
}



