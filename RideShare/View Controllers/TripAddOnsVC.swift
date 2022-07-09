//
//  TripAddOnsVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/3/22.
//

import UIKit

class TripAddOnsVC: UIViewController {
    
    let makeTripValuableLabel = UILabel()
    
  lazy var extras1: ExtrasView = {
    let extraItem = ExtrasView()
      extraItem.extrasImage.image = Icons.breakfastIcon
        extraItem.extrasLabel.text = "Breakfast"
        extraItem.extrasPrice.text = "GHS 50.00"
      extraItem.extrasLabel.adjustsFontSizeToFitWidth = true
      extraItem.extrasPrice.adjustsFontSizeToFitWidth = true
        return extraItem
    }()
    
    lazy var extras2: ExtrasView = {
     let extraItem = ExtrasView()
        extraItem.extrasImage.image = Icons.sleepingPodIcon
        extraItem.extrasLabel.text = "Sleeping Pod"
        extraItem.extrasPrice.text = "GHS 100.00"
        extraItem.extrasLabel.adjustsFontSizeToFitWidth = true
        extraItem.extrasPrice.adjustsFontSizeToFitWidth = true
        return extraItem
        
    }()
    
    lazy var extras3: ExtrasView = {
     let extraItem = ExtrasView()
        extraItem.extrasImage.image = Icons.drinksIcon
        extraItem.extrasLabel.text = "Drinks"
        extraItem.extrasPrice.text = "GHS 40.00"
        extraItem.extrasLabel.adjustsFontSizeToFitWidth = true
        extraItem.extrasPrice.adjustsFontSizeToFitWidth = true
        return extraItem
        
    }()
    
    lazy var extras4: ExtrasView = {
     let extraItem = ExtrasView()
        extraItem.extrasImage.image = Icons.blanketIcon
        extraItem.extrasLabel.text = "Blanket"
        extraItem.extrasPrice.text = "GHS 92.00"
        extraItem.extrasLabel.adjustsFontSizeToFitWidth = true
        extraItem.extrasPrice.adjustsFontSizeToFitWidth = true
        return extraItem
        
    }()
    
    lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [extras1, extras2, extras3, extras4])
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.spacing = 14
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
       
    }
    
    func setupView(){
        view.addSubview(makeTripValuableLabel)
        view.addSubview(containerStackView)
        
        makeTripValuableLabel.text = "Make your trip much more pleasurable"
        makeTripValuableLabel.font = .systemFont(ofSize: 14)
        
        
        makeTripValuableLabel.translatesAutoresizingMaskIntoConstraints = false
//        containerStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            makeTripValuableLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 12),
            makeTripValuableLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            makeTripValuableLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            makeTripValuableLabel.heightAnchor.constraint(equalToConstant: 20),
        
            containerStackView.topAnchor.constraint(equalTo: makeTripValuableLabel.bottomAnchor, constant: 2),
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            containerStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10),
           
        ])
    }

}


