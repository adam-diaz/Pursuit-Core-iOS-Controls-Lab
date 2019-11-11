import UIKit

class ViewController: UIViewController {

    // MARK: Segmented
    
    
    @IBOutlet weak var segmentLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    // MARK: Stepper
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var stepperControl: UIStepper!
    
    // MARK: UIImage
    
    @IBOutlet weak var cardNum: UILabel!
    
    @IBOutlet weak var cardSym: UIImageView!
    
    var value 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

