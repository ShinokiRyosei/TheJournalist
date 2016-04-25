//
//  NavigationViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController, UINavigationControllerDelegate, UIGestureRecognizerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.setIconOnNavigatinBar()
        self.navigationController?.interactivePopGestureRecognizer?.enabled = true
        self.setNavBarButton()
        self.layoutNavigationBar()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func layoutNavigationBar()  {
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
    }
    
    func setIconOnNavigatinBar() {
        let image = UIImage(named: "logo")
        self.navigationController?.navigationBar.setBackgroundImage(image?.resizableImageWithCapInsets(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), resizingMode: .Stretch), forBarMetrics: .Default)
    }
    
    func setNavBarButton() {
        let navBarButton = UIBarButtonItem(image: UIImage(named: "NavBar"), style: .Done, target: self, action: #selector(self.showNavBar))
        self.navigationItem.leftBarButtonItem = navBarButton
    }
    
    func showNavBar() {
        
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.interactivePopGestureRecognizer?.enabled = true
        
    }
    
    func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

}
