//
//  ViewController.swift
//  CustomTextFiledDemo
//
//  Created by jykj on 2020/5/11.
//  Copyright © 2020 wanglei. All rights reserved.
//

import UIKit

class ViewController: UIViewController,WLOPtionViewDelegate {
    func optionView(view: WLOptionView, selectedIndex: (Int)) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        let view = WLOptionView.init()
        view.dataSource = ["最近24小时","最近3天","最近7天","自定义时间"]
        view.delegate = self
        view.selectedCallBack { (viewTemp, index) in
            
        }
        
        self.view.addSubview(view)
        view.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left).offset(20)
            make.center.equalTo(self.view.center)
        }
    }


}

