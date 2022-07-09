//
//  PlusMinusButtonView.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/3/22.

import UIKit

class PlusMinusButtonView: UIView {
    
    let minusIcon = UIButton()
    let seperator = UIView()
    let plusIcon = UIButton()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView(){
        addSubview(minusIcon)
        addSubview(seperator)
        addSubview(plusIcon)
        
    
        self.backgroundColor = UIColor(red: 0.889, green: 0.928, blue: 0.918, alpha: 1)
        self.layer.cornerRadius = 4
        minusIcon.setImage(UIImage(systemName: "minus"), for: .normal)
        minusIcon.tintColor = UIColor(red: 0.125, green: 0.275, blue: 0.235, alpha: 1)
        seperator.backgroundColor = UIColor(red: 0.125, green: 0.275, blue: 0.235, alpha: 0.5)
        plusIcon.setImage(UIImage(systemName: "plus"), for: .normal)
        plusIcon.tintColor = UIColor(red: 0.125, green: 0.275, blue: 0.235, alpha: 1)
        
        
        minusIcon.translatesAutoresizingMaskIntoConstraints = false
        seperator.translatesAutoresizingMaskIntoConstraints = false
        plusIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            minusIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            minusIcon.trailingAnchor.constraint(equalTo: seperator.leadingAnchor),
            minusIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            minusIcon.heightAnchor.constraint(equalToConstant: 20),
//            minusIcon.widthAnchor.constraint(equalToConstant: 20),
//
            seperator.topAnchor.constraint(equalTo: self.topAnchor, constant: 7),
            seperator.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            seperator.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -7),
            seperator.widthAnchor.constraint(equalToConstant: 1),
            
            
            plusIcon.leadingAnchor.constraint(equalTo: seperator.trailingAnchor, constant: 6),
            plusIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -6),
            plusIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//            plusIcon.heightAnchor.constraint(equalToConstant: 14),
//            plusIcon.widthAnchor.constraint(equalToConstant: 14)
            
            
        ])
    }
    }


