//
//  FindInfoVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/3/22.
//

import UIKit

class FindInfoVC: UIViewController {
    
    let findInfoButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
    
}
    
    func configureButton(){
        view.addSubview(findInfoButton)
        
        findInfoButton.setTitle("Find times and prices", for: .normal)
        findInfoButton.layer.backgroundColor = Backgrounds.regularBackgroundColor
        findInfoButton.layer.cornerRadius = 4
        
        findInfoButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            findInfoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            findInfoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            findInfoButton.heightAnchor.constraint(equalToConstant: 50),
            findInfoButton.widthAnchor.constraint(equalToConstant: 330)
            
        ])
        
        
        
    }
}



