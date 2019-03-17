
//
//  SideBarViewController.swift
//  SampleSideBar_ios
//
//  Created by 박정훈 on 17/03/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class SideBarViewController: UITableViewController{
    
    //메뉴 제목 배열
    let titles = [
        "메뉴 01",
        "메뉴 02",
        "메뉴 03",
        "메뉴 04",
        "메뉴 05"
    ]
    
    //메뉴 아이콘 배열
    let icons = [
        UIImage(named: "icon01.png"),
        UIImage(named: "icon02.png"),
        UIImage(named: "icon03.png"),
        UIImage(named: "icon04.png"),
        UIImage(named: "icon05.png")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        //계정 정보를 표시할 레이블 객체를 정의
        let accountLabel = UILabel()
        accountLabel.frame = CGRect(x: 10, y: 30, width: self.view.frame.width, height: 30)
        
        accountLabel.text = "go9018@gmail.com"
        accountLabel.textColor = UIColor.white
        accountLabel.font = UIFont.boldSystemFont(ofSize: 15)
        
        //테이블 뷰 상단에 표시될 뷰를 정의한다.
        let v = UIView()
        v.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 70)
        v.backgroundColor = UIColor.brown
        v.addSubview(accountLabel)
        
        //생성한 뷰 v를 테이블 헤더 뷰 영역에 등록한다.
        self.tableView.tableHeaderView = v
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //재사용 큐로부터 테이블 셀을 꺼내온다. (셀 재사용 메커니즘 코드)
        let id = "menucell" //재사용 큐에 등록할 식별자
        let cell = tableView.dequeueReusableCell(withIdentifier: id) ?? UITableViewCell(style: .default, reuseIdentifier: id)
        
        //재사용 큐에 menucell 키로 등록된 테이블 뷰 셀이 없다면 새로 추가한다. (셀 재사용 메커니즘 코드)
        /*if cell == nil{//캐싱된 셀이 없을때 실행됨, 캐싱된 셀이 있다면 이 구문을 건너띔
            //이 코드로 생성된 셀은 역할이 끝나면 두 번째 매개변수를 키로 하여 재사용큐에 캐싱 됨
            cell = UITableViewCell(style: .default, reuseIdentifier: id)
        }*/
        
        //타이틀과 이미지를 대입한다.
        cell.textLabel?.text = self.titles[indexPath.row]
        cell.imageView?.image = self.icons[indexPath.row]
        //폰트설정
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14)
        
        return cell
    }
}
