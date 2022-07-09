//
//  TabBarVC.swift
//  RideShare
//
//  Created by Tei Akpotosu-Nartey on 7/1/22.
//

import UIKit

class TabBarVC: UIViewController {
    
    let tabBar = UITabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tab()
    }
    func tab(){
        let homeVC = HomeVC()
        let ticketsVC = TicketsVC()
        let referralVC = ReferralVC()
        let settingsVC = SettingsVC()
        
        let item1 = UITabBarItem(title: "Home", image: UIImage(named: "home-icon"), tag: 0)
        let item2 = UITabBarItem(title: "Tickets", image: UIImage(named: "tickets-icon"), tag: 1)
        let item3 = UITabBarItem(title: "Referral", image: UIImage(named: "referral-icon"), tag: 2)
        let item4 = UITabBarItem(title: "Settings", image: UIImage(named: "settings-icon"), tag: 3)
        
        homeVC.tabBarItem = item1
        ticketsVC.tabBarItem = item2
        referralVC.tabBarItem = item3
        settingsVC.tabBarItem = item4
        
        tabBar.viewControllers = [homeVC, ticketsVC, referralVC, settingsVC]
        
        tabBar.tabBar.tintColor = UIColor(red: 0.098, green: 0.588, blue: 0.459, alpha: 1)
        
        self.view.addSubview(tabBar.view)
        
    }
  
}
