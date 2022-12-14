//
//  ImageProxy.swift
//  ProxyPattern
//
//  Created by jc.kim on 12/14/22.
//

import UIKit

class ImageProxy: Subject {
    let url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    let realView: UIView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .orange
        imageView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        return imageView
    }()
    
    let placeholderView: UIView = {
        let imageNotFoundLabel = UILabel()
        imageNotFoundLabel.numberOfLines = 0
        imageNotFoundLabel.textAlignment = .center
        imageNotFoundLabel.text = "이미지를 로드하고 있습니다. 잠시만 기다려주세요."
        imageNotFoundLabel.textColor = .black
        imageNotFoundLabel.backgroundColor = .lightGray
        imageNotFoundLabel.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2)
        return imageNotFoundLabel
    }()
    
    func draw() {
        loadImage()
    }
    
    func loadImage() {
        guard let data = try? Data(contentsOf: url),
              let image = UIImage(data: data),
              let imageView = realView as? UIImageView else { return }
        
        DispatchQueue.global().async {
            DispatchQueue.main.async {
                imageView.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2)
                imageView.image = image
            }
        }
    }
}
