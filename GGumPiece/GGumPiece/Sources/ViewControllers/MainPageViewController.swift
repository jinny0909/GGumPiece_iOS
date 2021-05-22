//
//  MainPageViewController.swift
//  GGumPiece
//
//  Created by 이정엽 on 2021/05/23.
//

import UIKit

enum MoonPhase: Int {
    case phase5 = 0
    case phase1 = 1
    case phase2 = 2
    case phase3 = 3
    case phase4 = 4
    
    func getMoonImage() -> UIImage {
        switch self {
        case .phase1:
            return UIImage(named: "mainMoon1")!
        case .phase2:
            return UIImage(named: "mainMoon2")!
        case .phase3:
            return UIImage(named: "mainMoon3")!
        case .phase4:
            return UIImage(named: "mainMoon4")!
        case .phase5:
            return UIImage(named: "mainMoon5")!
        }
    }
    
    func getLabel(_ day: String) -> String {
        switch self {
        case .phase1:
            return "꿈 안 꾼지 " + day + "일째!"
        case .phase5:
            return "꿈 하나가 완성됐어요!"
        default:
            return "꿈 조각이 추가됐어요!"
        }
    }
}

class MainPageViewController: UIViewController {
    
    var moonStatus: MoonPhase = .phase5

    @IBOutlet weak var checkDreamButton: UIButton!
    @IBOutlet weak var moonImageView: UIImageView!
    @IBOutlet weak var dreamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeStyle()
    }
    
    private func initializeStyle() {
        moonImageView.image = moonStatus.getMoonImage()
        dreamLabel.text = moonStatus.getLabel("")
        checkDreamButton.layer.cornerRadius = 15
    }
    
    @IBAction func touchCheckDreamButton(_ sender: Any) {
    }
    
    
    
}
