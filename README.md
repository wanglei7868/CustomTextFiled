# CustomTextFiled
带下拉框的选择框

# 导入方法
```下载demo将WLOptionView.swift文件 拖入项目```
# 使用
## vc遵循代理 初始化view
```
.normal 选择框不可输入
.search可以搜索的输入框
```
```
     let view = WLOptionView.init(frame: .zero, type: .normal)
     view.dataSource = ["最近24小时","最近3天","最近7天","自定义时间"]
     view.delegate = self
     view.selectedCallBack { (viewTemp, index) in

     }
     self.view.addSubview(view)
```
## search
```
let view1 = WLOptionView.init(frame: CGRect.init(x: 100, y: 200, width: 200, height: 40), type: .search)
      view1.dataSource = ["121","123","125","213","232","224","267","265","452","432","435","227","239","260"]
      view1.delegate = self
      view1.searchSelectedCallBack(block: { (viewTemp, str, index) in

      })
      self.view.addSubview(view)
      self.view.addSubview(view1)
```
## 或使用snpkit
```
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
```

# 注意：
1.项目内使用了snpkit布局 需要导入该库
