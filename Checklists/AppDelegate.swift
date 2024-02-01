//
//  AppDelegate.swift
//  Checklists
//
//  Created by Austin Sparks on 1/24/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

// Methods needed later

//func documentsDirectory() -> URL {
//   let paths = FileManager.default.urls(
//     for: .documentDirectory,
//     in: .userDomainMask)
//   return paths[0]
//}

//func dataFilePath() -> URL {
//   return
//  documentsDirectory().appendingPathComponent("Checklists.plist")
//}

//func saveCheckListItems() {
//    let encoder = PropertyListEncoder()
//    do {
//        let data = try encoder.encode(checklist.items)
//        try data.write(
//          to: dataFilePath(),
//          options: Data.WritingOptions.atomic)
//    } catch {
//        print("Error encoding item array: \(error.localizedDescription)")
//    }
//}

//func loadCheckListItems() {
//    let path = dataFilePath()
//    if let data = try? Data(contentsOf: path) {
//        let decoder = PropertyListDecoder()
//        do {
//            checklist.items = try decoder.decode(
//              [ChecklistItem].self,
//              from: data)
//        } catch {
//            print("Error decoding item array: \(error.localizedDescription)")
//        }
//    }
//      
//}

