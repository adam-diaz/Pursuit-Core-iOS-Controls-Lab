import UIKit

class ViewController: UIViewController {

    // MARK: Segmented
    
    
    @IBOutlet weak var segmentLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    // MARK: Stepper
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var stepperCont: UIStepper!
    
    // MARK: UIImage
    
    @IBOutlet weak var cardNum: UILabel!
    
    var cardNumChange: Int = 1
    
    @IBOutlet weak var cardSym: UIImageView!
    
    var suitSegment: Int = 0 {
        didSet {
            switch segmentedControl.selectedSegmentIndex {
            case 0:
                cardSym.image = UIImage(systemName: "suit.diamond.fill")
                //cardSym.setImage(UIImage(systemName: "pencil.slash"), for: .normal))
            case 1:
               cardSym.image = UIImage(systemName: "suit.heart.fill")
            case 2:
                cardSym.image = UIImage(systemName: "suit.club.fill")
            case 3:
                cardSym.image = UIImage(systemName: "suit.spade.fill")
            default:
                cardSym.image = UIImage(systemName: "pencil.slash")
            }
        }
    }
    
    func configureStepper() {
        stepperCont.minimumValue = 1
        stepperCont.maximumValue = 13
        stepperCont.stepValue = 1

        stepperCont.value = 4
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    @IBAction func segmentSuits(_ sender: UISegmentedControl) {
        suitSegment = sender.selectedSegmentIndex
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

