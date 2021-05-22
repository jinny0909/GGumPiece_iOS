//
//  detailPageViewController.swift
//  GGumPiece
//
//  Created by 박익범 on 2021/05/23.
//

import UIKit

class detailPageViewController: UIViewController {
    
    private var dummyList:[DetailDataModel] = []
    @IBOutlet weak var datailTableView: UITableView!

    func setDummyList(){
        dummyList.append(contentsOf: [
            DetailDataModel(imageName: "main_moon1", date: "2021.05.05", name: "테슬라 주식으로 벼락부자", detail: "오늘 꿈에서 어린이날 기념으로 테슬라 주식 300주를 선물 받아 벼락부자가 되었다.  받자마자 100주는 팔아서 그동..."), DetailDataModel(imageName: "main_moon2", date: "2021. 05. 09", name: "이스탄불에서 할아버지와 새해를", detail: "오늘 꿈에 할아버지가 나왔다. 함께 이스탄불의 갈라타 다리로 가서 일출을 보며 새해 소망을 빌었다. 그때 갑자기 하늘..."), DetailDataModel(imageName: "main_moon3", date: "2021. 05. 11", name: "우리집 준호가 우리집에 왔다", detail: "오늘 꿈에서 준호가.. 드디어 우리집에 왔다. 너무 기뻐서현실인줄 알았는데 꿈이었다. 얼른 국방부는 준호를 우리..")
        ])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setDummyList()
        datailTableView.delegate = self
        datailTableView.dataSource = self
        datailTableView.separatorStyle = .none
        // Do any additional setup after loading the view.
    }
    

}

extension detailPageViewController : UITableViewDelegate{
    func tableView(_ tableView : UITableView, heightForRowAt indextPath: IndexPath) -> CGFloat{
        return 112
    }
    
    
}

extension detailPageViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let detailCell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as? DetailTableViewCell else {return UITableViewCell() }
        detailCell.setData(imageName: dummyList[indexPath.row].imageName, date: dummyList[indexPath.row].date, name: dummyList[indexPath.row].name, detail: dummyList[indexPath.row].detail)
        return detailCell
    }
    
    
}
