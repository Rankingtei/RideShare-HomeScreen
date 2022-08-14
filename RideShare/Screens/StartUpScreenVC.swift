//
//  StartUpScreenVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 6/30/22.
//

import UIKit

class StartUpScreenVC: UIViewController {
    
    let sloganLabel = UILabel()
    let startIcon = UIImageView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = UIColor(red: 0.125, green: 0.275, blue: 0.235, alpha: 1).cgColor
        configureStartScreen()
    }
    
    @objc func checkAction(sender : UITapGestureRecognizer) {
        let tabbarVC = TabBarVC()
        navigationController?.pushViewController(tabbarVC, animated: true)
    }
    
    func configureStartScreen(){
        view.addSubview(sloganLabel)
        view.addSubview(startIcon)
        
        sloganLabel.text = "Ride with us."
        sloganLabel.font = .systemFont(ofSize: 25, weight: .bold)
        sloganLabel.textColor = .white
        sloganLabel.alpha = 0.5
        
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        self.sloganLabel.addGestureRecognizer(gesture)
       
        startIcon.image = UIImage(named: "image 11")
        startIcon.alpha = 0.5
        
        sloganLabel.translatesAutoresizingMaskIntoConstraints = false
        startIcon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            sloganLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sloganLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            sloganLabel.heightAnchor.constraint(equalToConstant: 30),
            
            startIcon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startIcon.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }

}
