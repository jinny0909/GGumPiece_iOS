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
        transitionToMain()

    }
    
    @IBAction func touchListButton(_ sender: Any) {
        if !self.listButton.isSelected {
           
            removeChildren()
            transitionToList()
        }
    }
    
    @IBAction func touchMainButton(_ sender: Any) {
        if !self.mainButton.isSelected {
            
            removeChildren()
            transitionToMain()
        }
    }
    
    private func transitionToList() {
        self.mainButton.setImage(UIImage(named: "iconMain"), for: .normal)
        self.listButton.setImage(UIImage(named: "iconListSelected"), for: .normal)
        // 작성해줘
        print(1)
    }
    
    private func transitionToMain() {
        self.mainButton.setImage(UIImage(named: "iconMainSelected"), for: .normal)
        self.listButton.setImage(UIImage(named: "iconList"), for: .normal)
        let storyboard = UIStoryboard(name: "MainPage", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "MainPageViewController") as? MainPageViewController else {
            return
        }
        addChild(vc)
        vc.view.frame = self.containerView.bounds
        self.containerView.addSubview(vc.view)
        
    }
    

    private func removeChildren() {
        for vc in children {
            vc.view.removeFromSuperview()
            vc.removeFromParent()
            
        }
    }
    
}
