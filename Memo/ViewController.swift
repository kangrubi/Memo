//
//  ViewController.swift
//  Memo
//
//  Created by 강루비 on 2022/01/11.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK : Propertes
    // 제목 정보가 담긴 배열
    let memoTitleArray: [String] = ["장보기", "장보기2", "장보기3", "장보기4"]
    // 내용 정보가 담긴 배열
    let memoContentArray: [String] = ["피자, 햄버거, 주스", "고기, 만두, 샐러드", "김밥, 우동, 떡볶이", "튀김, 어묵, 햄"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    // MARK: UITableViewSource
    // numberOfRowsInSection - 섹션(section) 안에 있는 행(row)들 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoTitleArray.count
    }
    
    // cell for row at - 그 줄에 어떤 셀을 보여줄 것인지, 그 셀에 대해 정의
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "memoCell", for: indexPath) as? MemoTableViewCell else { return UITableViewCell() }
        
        let title = memoTitleArray[indexPath.row]
        let content = memoContentArray[indexPath.row]
        
        cell.titleLabel.text = title
        cell.contantLabel.text = content
        
        return cell
    }
    
    // MARK: UITableViewDelegate
    // height for row at: row의 높이를 지정
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    

}

