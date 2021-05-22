//
//  loginViewController.swift
//  GGumPiece
//
//  Created by kyoungjin on 2021/05/23.
//

import UIKit

class loginViewController: UIViewController {

    static let identifier : String = "loginViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
        //move to login page
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
