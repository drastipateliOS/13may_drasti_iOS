//
//  AppDelegate.swift
//  DatabaseApp
//
//  Created by MAC1 on 30/08/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var strpath=""
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        dbcopypaste()
        return true
    }

    func dbcopypaste()
    {
        let path=NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        strpath=path+"/studdb.db"
        print(strpath)
        
        do
        {
            if !FileManager.default.fileExists(atPath: strpath)
            {
                let local=Bundle.main.path(forResource: "studdb", ofType: "db")
                try FileManager.default.copyItem(atPath: local!, toPath: strpath)
                print("Database copied successfully!")
            }
            else
            {
                print("File is already exists!")
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
        
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

