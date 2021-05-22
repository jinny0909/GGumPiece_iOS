//
//  DetailPageSubjectViewController.swift
//  GGumPiece
//
//  Created by 박익범 on 2021/05/23.
//

import UIKit

class DetailPageSubjectViewController: UIViewController {
    @IBOutlet weak var subjectView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func setRadius(){
        subjectView.clipsToBounds = true
        subjectView.layer.cornerRadius = 20
    }
}
