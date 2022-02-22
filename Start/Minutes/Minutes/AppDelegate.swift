import UIKit
import AppCenter
import AppCenterDistribute
import AppCenterCrashes
import AppCenterAnalytics

// AppSecret: 954bbebc-2a9b-4898-99d2-9be5dcd0ed32
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    static var entries: FileEntryStore = FileEntryStore()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        AppCenter.start(withAppSecret: "954bbebc-2a9b-4898-99d2-9be5dcd0ed32",
                        services: [Crashes.self, Distribute.self, Analytics.self])
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}
