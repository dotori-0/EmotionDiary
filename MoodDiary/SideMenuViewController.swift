//
//  SideMenuViewController.swift
//  EmotionDiary
//
//  Created by SC on 2022/07/16.
//

import UIKit

class SideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("🍒", #function)

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("🍒", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print("🍒", #function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("🍒", #function)
        EmotionDiaryViewController().designLabels()
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("🍒", #function)
    }

    func reset() {
        for key in UserDefaults.standard.dictionaryRepresentation().keys {
            UserDefaults.standard.removeObject(forKey: key)
        }

        EmotionDiaryViewController().printUserDefaults()
    }


    @IBAction func resetButtonClicked(_ sender: UIButton) {
        showAlert()

    }

    func showAlert() {
        let alert = UIAlertController(title: "정말요?", message: "초기화 시 모든 데이터가 영구 삭제됩니다.\n정말 삭제하시겠습니까?", preferredStyle: .alert)

//        let ok = UIAlertAction(title: "확인", style: .destructive, handler: reset())
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: { alertAction in
            self.reset()
        })
        let cancel = UIAlertAction(title: "취소", style: .cancel)

        alert.addAction(ok)
        alert.addAction(cancel)

        present(alert, animated: true, completion: nil)
    }



}
