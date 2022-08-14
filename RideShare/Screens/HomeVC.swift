//
//  HomeVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/1/22.
//

import UIKit

class HomeVC: UIViewController {
    
    let  headerView = UIView()
    let datesView = UIView()
    let numberOfPersons = UIView()
    let tripExtras = UIView()
    let findInfo = UIView()
    
    lazy var headerViewVC = HeaderViewVC()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        self.add(childVC: headerViewVC, to: self.headerView)
        self.add(childVC: AvailableDatesVC(), to: self.datesView)
        self.add(childVC: NumberOfPersonsVC(), to: self.numberOfPersons)
        self.add(childVC: TripAddOnsVC(), to: self.tripExtras)
        self.add(childVC: FindInfoVC(), to: self.findInfo)
    
        LayoutUI()
    }
    
    func add(childVC: UIViewController, to containerView: UIView){
       addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
        childVC.didMove(toParent: self)
    }
    
    func LayoutUI(){
        view.addSubview(headerView)
        view.addSubview(datesView)
        view.addSubview(numberOfPersons)
        view.addSubview(tripExtras)
        view.addSubview(findInfo)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        datesView.translatesAutoresizingMaskIntoConstraints = false
        numberOfPersons.translatesAutoresizingMaskIntoConstraints = false
        tripExtras.translatesAutoresizingMaskIntoConstraints = false
        findInfo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 270),

            datesView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            datesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            datesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            datesView.heightAnchor.constraint(equalToConstant: 80),

            numberOfPersons.topAnchor.constraint(equalTo: datesView.bottomAnchor),
            numberOfPersons.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            numberOfPersons.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            numberOfPersons.heightAnchor.constraint(equalToConstant: 90),

            tripExtras.topAnchor.constraint(equalTo: numberOfPersons.bottomAnchor),
            tripExtras.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tripExtras.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tripExtras.heightAnchor.constraint(equalToConstant: 180),
            
            findInfo.topAnchor.constraint(equalTo: tripExtras.bottomAnchor),
            findInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            findInfo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            findInfo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120)
        ])
    }
}
