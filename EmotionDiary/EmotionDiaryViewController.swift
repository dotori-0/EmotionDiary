//
//  EmotionDiaryViewController.swift
//  EmotionDiary
//
//  Created by SC on 2022/07/11.
//

import UIKit

class EmotionDiaryViewController: UIViewController {

    // Buttons
    @IBOutlet weak var slime0Button: UIButton!
    @IBOutlet weak var slime1Button: UIButton!
    @IBOutlet weak var slime2Button: UIButton!
    @IBOutlet weak var slime3Button: UIButton!
    @IBOutlet weak var slime4Button: UIButton!
    @IBOutlet weak var slime5Button: UIButton!
    @IBOutlet weak var slime6Button: UIButton!
    @IBOutlet weak var slime7Button: UIButton!
    @IBOutlet weak var slime8Button: UIButton!


    // Labels
    @IBOutlet weak var emotion0Label: UILabel!
    @IBOutlet weak var emotion1Label: UILabel!
    @IBOutlet weak var emotion2Label: UILabel!
    @IBOutlet weak var emotion3Label: UILabel!
    @IBOutlet weak var emotion4Label: UILabel!
    @IBOutlet weak var emotion5Label: UILabel!
    @IBOutlet weak var emotion6Label: UILabel!
    @IBOutlet weak var emotion7Label: UILabel!
    @IBOutlet weak var emotion8Label: UILabel!

    // Counts
    var emotion0Count = 0
    var emotion1Count = 0
    var emotion2Count = 0
    var emotion3Count = 0
    var emotion4Count = 0
    var emotion5Count = 0
    var emotion6Count = 0
    var emotion7Count = 0
    var emotion8Count = 0


    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonArray = [slime0Button, slime1Button, slime2Button, slime3Button, slime4Button,
                           slime5Button, slime6Button, slime7Button, slime8Button]

        let labelArray = [emotion0Label, emotion1Label, emotion2Label, emotion3Label, emotion4Label,
                          emotion5Label, emotion6Label, emotion7Label, emotion8Label]

//        slime0Button.inset
        designButtons(buttonArray)
    }

    func designButtons(_ buttonArray: [UIButton?]) {
//        slime0Button.imageView?.contentMode = .scaleAspectFit
//        slime0Button.configuration = .default
//        slime8Button.setImage(UIImage(named: "sesac_slime2"), for: .normal)  // 이미지 크기 그대로 대문짝만하게 나옴
//        slime0Button.configuration?.background.image = UIImage(named: "sesac_slime1")  // O
//        slime0Button.setTitle(nil, for: [])  // nil로 설정해도 "Button"
//        slime0Button.setTitle("", for: [])  // O
//        slime0Button.setBackgroundImage(UIImage(named: "sesac_slime1"), for: .normal)  // iOS 15 이전 Button Style: Default의 경우

        for i in 0..<buttonArray.count {
            buttonArray[i]!.setTitle("", for: [])
//            buttonArray[i]!.configuration?.baseForegroundColor = .clear
//            buttonArray[i]!.configuration?.baseBackgroundColor = .clear
//            buttonArray[i]!.configuration?.background.backgroundColor = .clear
            // 위에 3 줄 그럼 왜 있는 건지..?
            buttonArray[i]!.backgroundColor = .clear  // O
            buttonArray[i]!.configuration?.background.image = UIImage(named: "sesac_slime\(i+1)")
        }

    }




}
