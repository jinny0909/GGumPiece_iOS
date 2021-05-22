//
//  choiceViewController.swift
//  GGumPiece
//
//  Created by kyoungjin on 2021/05/23.
//


import UIKit

class choiceViewController: UIViewController {

    static let identifier : String = "choiceViewController"

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func joinClicked(_ sender: Any) {
        guard let signupVC = self.storyboard?.instantiateViewController(identifier: "signupViewController")as? signupViewController else{return}
        self.navigationController?.pushViewController(signupVC, animated: true)
        
    }
    
    
    
    @IBAction func loginClicked(_ sender: Any) {
        guard let loginVC = self.storyboard?.instantiateViewController(identifier: "loginViewController")as? loginViewController else{return}
        self.navigationController?.pushViewController(loginVC
                                                      , animated: true)
        
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
