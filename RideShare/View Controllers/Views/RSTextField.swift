//
//  RSTextField.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/2/22.
//

import UIKit

class RSTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        let whitePlaceholderText = NSAttributedString(string: "My Placeholder",
                                                      attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)])
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .black
        textAlignment = .left
        backgroundColor = UIColor(red: 0.211, green: 0.355, blue: 0.317, alpha: 1)
        attributedPlaceholder = whitePlaceholderText
        
    }
}
