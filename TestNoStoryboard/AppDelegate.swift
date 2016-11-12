import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var navController: UINavigationController?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

		window = UIWindow(frame: UIScreen.main.bounds)
		navController = UINavigationController(rootViewController: newMainPage)
		window?.rootViewController =  navController
		window?.makeKeyAndVisible()

		return true
	}

	func pushNext() {
		navController?.pushViewController(
			newMainPage,
			animated: true)
	}

	var newMainPage: MainPage {
		return MainPage { [weak self] in
			self?.pushNext()
		}
	}

}

