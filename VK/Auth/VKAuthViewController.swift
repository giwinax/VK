//
//  VKAuthViewController.swift
//  VK
//
//  Created by s b on 30.03.2022.
//

import UIKit

class VKAuthViewController: UIViewController {

    private var authService: AuthService!
    
    @IBOutlet weak var WellcomeTitile: UILabel!
    
    @IBOutlet weak var SubTitle: UILabel!
    
    @IBOutlet weak var SignInBT: UIButton!
    
    
    @IBAction func SignInTouch() {
        authService.wakeUpSession()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimation()
        authService = AppDelegate.shared().authService
    }
    
    private func runAnimation(){
        WellcomeTitile.center.y = view.center.y * 3 / 4
        SubTitle.center.y = view.center.y * 3 / 4 + 50
        WellcomeTitile.alpha = 0
        SubTitle.alpha = 0
        SignInBT.alpha = 0
        SignInBT.center.y = view.bounds.maxY
        
        UIView.animate(withDuration: 1.5) {
          self.WellcomeTitile.center.y -= self.view.bounds.height * 1/7
            self.WellcomeTitile.alpha += 1
            
        }
        UIView.animate(withDuration: 1.0, delay: 1, options: .curveEaseInOut, animations: {
            self.SubTitle.center.y -= self.view.bounds.height * 1/8
            self.SubTitle.alpha += 1
        }, completion: .none)

        UIView.animate(withDuration: 0.7, delay: 1.5, options: .curveEaseInOut, animations: {
            self.SignInBT.center.y -= self.view.bounds.height * 1/9
            self.SignInBT.alpha += 1
        }, completion: .none)
        
    }
    


    
}
