//
//  AvailableDatesVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/2/22.
//

import UIKit

class AvailableDatesVC: UIViewController {

    let availableDatesLabel = UILabel()
    lazy var date1: DatesView = {
        let date = DatesView()
        date.dateLabel.text = "Today"
        date.dateLabel.textColor = UIColor(red: 0.098, green: 0.588, blue: 0.459, alpha: 1)
        return date
    }()
    
    lazy var date2: DatesView = {
        let date = DatesView()
        date.dateLabel.text = "Tommorow"
        return date
    }()
    
    lazy var date3: DatesView = {
        let date = DatesView()
        date.dateLabel.text = "22nd"
        return date
    }()

    lazy var date4: DatesView = {
        let date = DatesView()
        let dateIconImage = Icons.datesIcon
        date.dateLabel.text = "Other"
        date.dateLabel.textAlignment = .right
        date.iconImage.image = dateIconImage
        date.showImage()
        return date
    }()

    lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [date1, date2, date3, date4])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    configure()
        
    }
    
    private func configure(){
        view.addSubview(availableDatesLabel)
        view.addSubview(containerStackView)
    
        availableDatesLabel.text = "Available Dates"
        availableDatesLabel.font = .systemFont(ofSize: 15, weight: .regular)
        
        availableDatesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
        
            availableDatesLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            availableDatesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            availableDatesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            availableDatesLabel.heightAnchor.constraint(equalToConstant: 15),
            
            containerStackView.topAnchor.constraint(equalTo: availableDatesLabel.bottomAnchor, constant: 15),
            containerStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            containerStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        
        
    }
    


}
