//
//  MyMomentViewController.swift
//  WeChatMoments
//
//  Created by ZikeX on 2022/3/23.
//

import UIKit

class MyMomentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    lazy var tableViewMoment: UITableView = {
        let instance = UITableView(frame: .zero, style: .plain)
        instance.dataSource = self
        instance.delegate = self
        return instance
    }()
}
