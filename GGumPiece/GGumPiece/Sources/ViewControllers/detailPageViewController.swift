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
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
            let deleteAction = UIContextualAction(style: .normal, title: "", handler: { action, view, completionHaldler in
                self.dummyList.remove(at: indexPath.row)
                self.datailTableView.reloadData()
                completionHaldler(true)
            })
        deleteAction.image = UIImage(named: "deleteImage")
        deleteAction.backgroundColor = UIColor(red: 250/255, green: 245/255, blue: 254/255, alpha: 1)
            return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    

    func setDummyList(){
        dummyList.append(contentsOf: [
            DetailDataModel(imageName: "main_moon1", date: "2021. 05. 23", name: "핑크세상", detail: "온 곳이 다 핑크색인 나라에서 보라색 구름을 타고 둥둥 떠다녔다. 그 위에서 아래를 내려다봤는데 바람이 너무 좋았고 계속 행복했음^^~~ 근데 출발을 우리집아파트 단지에서 함.."), DetailDataModel(imageName: "main_moon2", date: "2021. 05. 09", name: "감자랑 태풍ㅠ", detail: " 감자랑 공원 산책을 하다가 갑자기 태풍이 심하게 휘몰아쳐서 나랑 감자랑 같이 휩쓸려 날아감. 감자의 손을 놓지 않으려 했으나 끝내 놓쳐서 혼자 어딘가에 떨어져서 훌쩍훌쩍 우는데 갑자기 뒤에서 감자가 풀숲에서 튀어나왔다."), DetailDataModel(imageName: "main_moon3", date: "2021. 04. 30", name: "은샘지폐;", detail: "우주선에서 만원을 주웠는데 그 돈에 은샘이 얼굴이 그려져 있었음;;"), DetailDataModel(imageName: "main_moon4", date: "2021. 04. 27", name: "불이랑 오아시스", detail: " 피아노학원에 갔다가 집에 왔는데 집에 불이 나있었다. 불길이 너무 거세서 못들어가고 있었는데 뒤를 돌아보니 오아시스가 있었음;"), DetailDataModel(imageName: "main_moon5", date: "2021. 04. 13", name: "쫓기는꿈", detail: "밤에 혼자 집에 걸어오는데 이상한 사람이 무섭게 따라와서 전력질주를 했는데 속도가 너무 딸렸다.너무너무 무서웠고 땀을 많이 흘린 채로 잠에서 깼다. 얼굴은 기억이 안나는데 덩치가 컸음."), DetailDataModel(imageName: "main_moon1", date: "2021. 03. 17", name: "아들생김", detail: " 비혼주의잔데 갑자기 아들내미가 생김;; 걔가 악쓰면서 계속 울어서 나도 같이 울었다. 너무 시끄러웠음.")
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
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            guard let subjectVC = UIStoryboard(name: "DetailPageSubject", bundle: nil).instantiateViewController(identifier: "DetailPageSubjectViewController") as? DetailPageSubjectViewController else {return}
            self.navigationController?.pushViewController(subjectVC, animated: true)
        subjectVC.date = dummyList[indexPath.row].date
        subjectVC.name = dummyList[indexPath.row].name
        subjectVC.subject = dummyList[indexPath.row].detail
        
        if dummyList[indexPath.row].name == "감자랑 태풍ㅠ"{
            subjectVC.buttonLabel = "#태풍"
            subjectVC.boool = false
        }

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
