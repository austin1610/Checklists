//
//  SceneDelegate.swift
//  Checklists
//
//  Created by Austin Sparks on 1/24/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let dataModel = DataModel()


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let navigationController = window!.rootViewController as!
    UINavigationController
        let controller = navigationController.viewControllers[0] as!
    AllListsViewController
        controller.dataModel = dataModel
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
        saveData()
    
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
      
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
        saveData()
    }
    
    // MARK: - Helper Methods
    func saveData() {
       dataModel.saveChecklists()
    }


}

