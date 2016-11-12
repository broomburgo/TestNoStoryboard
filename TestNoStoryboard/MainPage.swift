import UIKit

final class MainPage: UIViewController {

	@IBOutlet weak var helloLabel: UILabel? {
		didSet {
			updateTime()
		}
	}

	@IBAction func didTap(_ sender: UITapGestureRecognizer) {
		updateTime()
	}

	@IBAction func didTapNext(_ sender: UIButton) {
		nextAction()
	}

	let nextAction: () -> ()
	required init(nextAction: @escaping () -> ()) {
		self.nextAction = nextAction
		super.init(nibName: "MainPage", bundle: nil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func updateTime() {
		helloLabel?.text = {
			let formatter = DateFormatter()
			formatter.dateFormat = "HH:mm:ss"
			return formatter.string(from: Date())
		}()

	}


	
}
