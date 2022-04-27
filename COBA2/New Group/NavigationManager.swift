//
//  NavigationManager.swift
//  COBA2
//
//  Created by Amara Putri Gunarso on 27/04/22.
//

import Foundation
import UIKit

class NavigationManager {
    enum Screen {
        case firstTime
        case mainApp
        case setGoal
        case goHome
        case finish
        case completeGoal
    }
    
    func show(screen: Screen, inController: UIViewController) {
        
        var viewController: UIViewController!
        
        switch screen {
        case .firstTime:
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "UnsettedHomeViewController")
            
        case .mainApp:
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SettedHomeViewController")
            
        case .setGoal:
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SetGoalViewController")
        
        case .goHome:
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SettedHomeViewController")
            
        case .finish:
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LatestPageViewController")
        case .completeGoal:
            viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "CongrastViewController")
        }
        
        
        
        if let sceneDelegate = inController.view.window?.windowScene?.delegate as? SceneDelegate, let
            window = sceneDelegate.window {
            window.rootViewController = viewController
        }
    }
}
