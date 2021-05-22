//
//  startViewController.swift
//  GGumPiece
//
//  Created by kyoungjin on 2021/05/23.
//


import UIKit

class startViewController: UIViewController {

    @IBOutlet weak var dreamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        dreamLabel.font = UIFont(name:"NotoSerifKR-Bold",size:26)

        // Do any additional setup after loading the view.
        
        let time = DispatchTime.now() + .seconds(2)
        // 2초뒤에 재생한다고 치구
                
                DispatchQueue.main.asyncAfter(deadline : time) {
        // 여기에  2초뒤에 재생될 코드 작성
                    guard let choiceVC = self.storyboard?.instantiateViewController(identifier: "choiceViewController") as? choiceViewController else{return}
//                    choiceVC.modalPresentationStyle = .fullScreen
//                    self.present(choiceVC, animated: true)
                    self.navigationController?.pushViewController(choiceVC, animated: true)
                    
                    
                    
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
