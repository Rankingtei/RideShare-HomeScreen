//
//  DatesView.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/2/22.
//

import UIKit

class DatesView: UIView {

  lazy var dateLabel: UILabel = {
        let label = UILabel()
      label.font = .systemFont(ofSize: 12)
      label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    
    lazy var iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.isHidden = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        
        addSubview(iconImage)
        addSubview(dateLabel)        
        
      
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.tintColor = .black
        
        
        
        backgroundColor = UIColor.systemBackground
        layer.cornerRadius = 20
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.89, green: 0.929, blue: 0.918, alpha: 1).cgColor
        
        NSLayoutConstraint.activate([
            iconImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconImage.trailingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
            
            dateLabel.leadingAnchor.constraint(equalTo: iconImage.trailingAnchor, constant: 2),
            dateLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            dateLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
        ])
    }

    
    func showImage(){
        iconImage.isHidden = false
    }
}
