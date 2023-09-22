//  ViewController.swift
//  AccuraLiveness
//
//  Created by Mac on 13/09/23.
//

import UIKit
import ProgressHUD
import AccuraLiveness_fm

class ViewController: UIViewController,LivenessData {
    
    
    @IBOutlet weak var livenessButton: UIButton!
    @IBOutlet weak var livenessRst: UILabel!
    @IBOutlet weak var livenessImg: UIImageView!
    
    
    let liveness = Liveness()
    override func viewDidLoad() {
        super.viewDidLoad()

       livenessButton.layer.cornerRadius = CGFloat(7.0)

       liveness.setLivenessURL("Your URl")
       // To customize your screen theme and feed back messages
       liveness.setBackGroundColor("#C4C4C5")
       liveness.setCloseIconColor("#000000")
       liveness.setFeedbackBackGroundColor("#C4C4C5")
       liveness.setFeedbackTextColor("#000000")
       liveness.setFeedbackTextSize(Float(18.0))
       liveness.setFeedBackframeMessage("Frame Your Face")
       liveness.setFeedBackAwayMessage("Move Phone Away")
       liveness.setFeedBackOpenEyesMessage("Keep Open Your Eyes")
       liveness.setFeedBackCloserMessage("Move Phone Closer")
       liveness.setFeedBackCenterMessage("Center Your Face")
       liveness.setFeedbackMultipleFaceMessage("Multiple face detected")
       liveness.setFeedBackFaceSteadymessage("Keep Your Head Straight")
       liveness.setFeedBackLowLightMessage("Low light detected")
       liveness.setFeedBackBlurFaceMessage("Blur detected over face")
       liveness.setFeedBackGlareFaceMessage("Glare detected")

       // 0 for clean face and 100 for Blurry face
       liveness.setBlurPercentage(80) // set blure percentage -1 to remove this filter

       // Set min and max percentage for glare
       liveness.setGlarePercentage(-1, -1)
       // Do any additional setup after loading the view.
    }

    @IBAction func ButtonActiveLiveness(_ sender: UIButton) {
        DispatchQueue.main.async {
            self.liveness.setLiveness(self)
        }
    }
    
    func livenessData(_ stLivenessValue: String!, livenessImage: UIImage!, status: Bool)
    {
        DispatchQueue.main.async {
            self.livenessImg.image = livenessImage
            self.livenessRst.text = "Score:- " + stLivenessValue
        }
    }
    
    func livenessViewDisappear() {
        
    }
    

    
}

