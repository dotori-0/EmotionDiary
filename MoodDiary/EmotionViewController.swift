//
//  EmotionViewController.swift
//  EmotionDiary
//
//  Created by SC on 2022/07/12.
//

import UIKit

class EmotionViewController: UIViewController {

    @IBOutlet weak var emotionFirstButton: UIButton!
    @IBOutlet weak var emotionFirstLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        emotionFirstButton.tag = 0

        let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
        emotionFirstButton.setImage(image, for: .normal)
//        emotionFirstButton.configuration =


        // 반환하는 함수 활용
        emotionFirstLabel.text = setUserNickName()

//        view.backgroundColor = example().0
        emotionFirstButton.setImage(UIImage(named: example().2), for: .normal)

    }

    // Tuple
    // 배경색, 레이블, 이미지
    func example() -> (UIColor, String, String) {
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8"]

        return (color.randomElement()!, "고래밥", image.randomElement()!)

        // return 이후 작성된 코드는 실행되지 앟는다
        // 항상 마지막 줄에 return 작성한다
    }
    

    func setUserNickName() -> String {
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!

        return "저는 \(select)입니다"
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        showAlertController()
    }

    func showAlertController() {

        // 1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .alert)

        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)

        // 3. 1 + 2
        // 여기서 추가한 순서대로 붙는다
        alert.addAction(cancel)
//        alert.addAction(web)
        alert.addAction(ok)
//        alert.addAction(copy)

        // alert 클래스 Test
        let alert2 = alert
        alert2.title = "Alert 2"
        alert2.message = "This is Alert 2."

        // 4.
        // present의 completion은 뭔가 내부적으로 처리하고 싶은 것이 있을 때 사용
        present(alert, animated: true, completion: nil)
    }

}
