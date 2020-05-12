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
    func searchOptionView(view: WLOptionView, selctedString: String, selectedIndex: (Int)) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        let view = WLOptionView.init(frame: .zero, type: .normal)
        view.dataSource = ["最近24小时","最近3天","最近7天","自定义时间"]
        view.delegate = self
        view.selectedCallBack { (viewTemp, index) in

        }
        
        let view1 = WLOptionView.init(frame: CGRect.init(x: 100, y: 200, width: 200, height: 40), type: .search)
        view1.dataSource = ["121","123","125","213","232","224","267","265","452","432","435","227","239","260"]
        view1.delegate = self
        view1.searchSelectedCallBack(block: { (viewTemp, str, index) in

        })
        self.view.addSubview(view)
        self.view.addSubview(view1)
        view.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left).offset(20)
            make.center.equalTo(self.view.center)
        }
      
    }


}

