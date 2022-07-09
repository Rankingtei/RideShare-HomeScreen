//
//  HeaderView.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/1/22.
//

import UIKit

class HeaderViewVC: UIViewController {
    
    let welcomeMessage = UILabel()
    let profileImage = UIImageView()
    let startPointInput = RSTextField()
    let endPointInput = RSTextField()
    let changePosition = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = Backgrounds.deepBackgroundColor
        configureView()

    }
    func configureView(){
        view.addSubview(welcomeMessage)
        view.addSubview(profileImage)
        view.addSubview(startPointInput)
        view.addSubview(endPointInput)
        view.addSubview(changePosition)
        
        
        welcomeMessage.text = "Hi, Kweku"
        welcomeMessage.textColor = .white
        welcomeMessage.font = .systemFont(ofSize: 25, weight: .bold)
        
        profileImage.image = UIImage(named: "Ellipse 2")
        startPointInput.placeholder = "   Where are you going"
        endPointInput.placeholder = "   Closest bus terminal"
        
        changePosition.setImage(UIImage(named:"Shape"), for: .normal)
        changePosition.backgroundColor = .white
        changePosition.layer.cornerRadius = 20
        changePosition.layer.masksToBounds = true
        changePosition.clipsToBounds = true

        welcomeMessage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        startPointInput.translatesAutoresizingMaskIntoConstraints = false
        endPointInput.translatesAutoresizingMaskIntoConstraints = false
        changePosition.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
         
            welcomeMessage.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            welcomeMessage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            welcomeMessage.trailingAnchor.constraint(equalTo: profileImage.leadingAnchor, constant: -20),
            welcomeMessage.heightAnchor.constraint(equalToConstant: 32),
            
            profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
//            profileImage.leadingAnchor.constraint(equalTo: welcomeMessage.trailingAnchor),
            profileImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            profileImage.widthAnchor.constraint(equalToConstant: 40),
            profileImage.heightAnchor.constraint(equalToConstant: 40),
            
            startPointInput.bottomAnchor.constraint(equalTo: endPointInput.topAnchor, constant: -20),
            startPointInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            startPointInput.heightAnchor.constraint(equalToConstant: 50),
            startPointInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            
            changePosition.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            changePosition.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),
            changePosition.heightAnchor.constraint(equalToConstant: 40),
            changePosition.widthAnchor.constraint(equalToConstant: 40),
            
            endPointInput.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            endPointInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            endPointInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            endPointInput.heightAnchor.constraint(equalToConstant: 50),

        ])
    }
}

