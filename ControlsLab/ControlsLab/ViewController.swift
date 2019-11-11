import UIKit

class ViewController: UIViewController {

    // MARK: Segmented
    
    
    @IBOutlet weak var segmentLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    // MARK: Stepper
    
    
    @IBOutlet weak var stepperCont: UIStepper!
    
    // MARK: UIImage
    
    @IBOutlet weak var cardNum: UILabel!

    
    @IBOutlet weak var cardSym: UIImageView!
    
    var valueNum: Double = 2 {
        didSet {
            cardNum.text = "\(stepperCont.value)"
        }
    }
    
        var suitSegment: Int = 0 {
            didSet {
                switch segmentedControl.selectedSegmentIndex {
                case 0:
                    cardSym.image = UIImage(systemName: "suit.diamond.fill")
                case 1:
                   cardSym.image = UIImage(systemName: "suit.heart.fill")
                case 2:
                    cardSym.image = UIImage(systemName: "suit.club.fill")
                case 3:
                    cardSym.image = UIImage(systemName: "suit.spade.fill")
                default:
                    cardSym.image = UIImage(systemName: "suit.heart")
                }
            }
        }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardNum.text = "A"
    }
    
    
    func configureStepper() {
        stepperCont.minimumValue = 2.0
        stepperCont.maximumValue = 13.0
        stepperCont.stepValue = 2.0
        stepperCont.value = 4.0
     }
    
    
    @IBAction func segmentSuits(_ sender: UISegmentedControl) {
        suitSegment = sender.selectedSegmentIndex
    }
    
    
    
    
    
    @IBAction func cardCount(_ sender: UIStepper) {
        cardNum.text = String(format: "%0.f", stepperCont.value)
        if stepperCont.value > 10.0 {
            switch stepperCont.value {
            case 11.0:
                cardNum.text = "J"
            case 12.0:
                cardNum.text = "Q"
            case 13.0:
                cardNum.text = "K"
            default:
                cardNum.text = "JK"
            }
        }

    }
    
    
    
    
    
    
    
    
    
}

