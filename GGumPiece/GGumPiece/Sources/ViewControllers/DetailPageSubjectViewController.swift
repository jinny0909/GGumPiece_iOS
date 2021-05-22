//
//  DetailPageSubjectViewController.swift
//  GGumPiece
//
//  Created by 박익범 on 2021/05/23.
//
import UIKit

class DetailPageSubjectViewController: UIViewController {
    @IBOutlet weak var subjectView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var date :String = ""
    var subject : String = ""
    var name : String = ""
    
    override func viewDidLoad() {
        setRadius()
        setLabel()
        super.viewDidLoad()
    }
    func setLabel(){
        dateLabel.text = date
        subjectLabel.text = subject
        nameLabel.text = name
    }
    
    func setRadius(){
        subjectView.clipsToBounds = true
        subjectView.layer.cornerRadius = 30
    }
    @IBAction func backButtonClicke(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
