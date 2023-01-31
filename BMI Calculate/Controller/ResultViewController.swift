import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        bmiLabel.textColor = bmiColor
    }

    @IBAction func recalculateTapped() {
        dismiss(animated: true)
    }
}