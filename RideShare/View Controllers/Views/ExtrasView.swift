//
//  ExtrasView.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/3/22.
//

import UIKit

class ExtrasView: UIView {

    let extrasImage = UIImageView()
    let extrasLabel = UILabel()
    var extrasPrice = UILabel()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        
        addSubview(extrasImage)
        addSubview(extrasLabel)
        addSubview(extrasPrice)
        
        extrasImage.layer.cornerRadius = 8
        extrasImage.layer.backgroundColor = Backgrounds.lightBackgroundColor
        
        extrasLabel.font = .systemFont(ofSize: 10, weight: .regular)
        extrasPrice.font = .systemFont(ofSize: 10, weight: .regular)
        extrasPrice.textColor = UIColor(red: 0.301, green: 0.624, blue: 0.539, alpha: 1)
        
        extrasImage.translatesAutoresizingMaskIntoConstraints = false
        extrasLabel.translatesAutoresizingMaskIntoConstraints = false
        extrasPrice.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            extrasImage.topAnchor.constraint(equalTo: self.topAnchor),
            extrasImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            extrasImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            extrasImage.heightAnchor.constraint(equalToConstant: 50),
            extrasImage.widthAnchor.constraint(equalToConstant: 50),
//            extrasImage.bottomAnchor.constraint(equalTo: extrasLabel.topAnchor),
            
            
            extrasLabel.topAnchor.constraint(equalTo: extrasImage.bottomAnchor, constant: 2),
            extrasLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            extrasLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            extrasLabel.bottomAnchor.constraint(equalTo: extrasPrice.topAnchor)
            
            extrasPrice.topAnchor.constraint(equalTo: extrasLabel.bottomAnchor ,constant: 4),
            extrasPrice.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            extrasPrice.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            extrasPrice.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
        ])
        
        
    }
    
}




extension UIImage {
  func withBackground(color: UIColor, opaque: Bool = true) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(size, opaque, scale)
        
    guard let ctx = UIGraphicsGetCurrentContext(), let image = cgImage else { return self }
    defer { UIGraphicsEndImageContext() }
        
    let rect = CGRect(origin: .zero, size: size)
    ctx.setFillColor(color.cgColor)
    ctx.fill(rect)
    ctx.concatenate(CGAffineTransform(a: 1, b: 0, c: 0, d: -1, tx: 0, ty: size.height))
    ctx.draw(image, in: rect)
        
    return UIGraphicsGetImageFromCurrentImageContext() ?? self
  }
}
