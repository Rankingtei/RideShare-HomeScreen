//
//  NumberOfPersonsVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/2/22.
//

import UIKit

class NumberOfPersonsVC: UIViewController {
    
    let personsIcon = UIImageView()
    let numberPersons = UILabel()
    let plusMinusButton = PlusMinusButtonView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    
    }

    func configure(){
        view.addSubview(personsIcon)
        view.addSubview(numberPersons)
        view.addSubview(plusMinusButton)
        
        personsIcon.image = Icons.personsIcon
        numberPersons.text = "1 person"
        numberPersons.font = .systemFont(ofSize: 14, weight: .light)

        personsIcon.translatesAutoresizingMaskIntoConstraints = false
        numberPersons.translatesAutoresizingMaskIntoConstraints = false
        plusMinusButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            personsIcon.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            personsIcon.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            personsIcon.heightAnchor.constraint(equalToConstant: 15),
            personsIcon.widthAnchor.constraint(equalToConstant: 18),
            
           
            numberPersons.leadingAnchor.constraint(equalTo: personsIcon.trailingAnchor, constant: 8),
            numberPersons.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            numberPersons.heightAnchor.constraint(equalToConstant: 15),
            numberPersons.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            plusMinusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
            plusMinusButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            plusMinusButton.heightAnchor.constraint(equalToConstant: 35),
            plusMinusButton.widthAnchor.constraint(equalToConstant: 104)



        ])
    }
}
