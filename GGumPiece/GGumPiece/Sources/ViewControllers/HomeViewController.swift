//
//  HomeViewController.swift
//  GGumPiece
//
//  Created by 이정엽 on 2021/05/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var listButton: UIButton!
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var myPageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func touchListButton(_ sender: Any) {
        if !self.listButton.isSelected {
            self.mainButton.setImage(UIImage(named: "iconMain"), for: .normal)
            self.listButton.setImage(UIImage(named: "iconListSelected"), for: .normal)
            removeChildren()
            transitionToList()
        }
    }
    
    @IBAction func touchMainButton(_ sender: Any) {
        if !self.mainButton.isSelected {
            self.mainButton.setImage(UIImage(named: "iconMainSelected"), for: .normal)
            self.listButton.setImage(UIImage(named: "iconList"), for: .normal)
            removeChildren()
            transitionToMain()
        }
    }
    
    private func transitionToList() {
        // 작성해줘
    }
    
    private func transitionToMain() {
        
    }
    

    private func removeChildren() {
        for vc in children {
            vc.view.removeFromSuperview()
            vc.removeFromParent()
            
        }
    }
    
}
