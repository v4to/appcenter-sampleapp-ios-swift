
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import AppCenterPush

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        MSAppCenter.setLogLevel(.verbose)
        
        MSAppCenter.start("e766b479-d386-445f-a7a8-c8346446e635", withServices: [
            MSAnalytics.self,
            MSCrashes.self,
            MSPush.self,
        ])
        
        return true
    }
}
