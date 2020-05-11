# CustomTextFiled
带下拉框的选择框

# 导入方法
```下载demo将WLOptionView.swift文件 拖入项目```
# 使用
## vc遵循代理 初始化view
```
     let view = WLOptionView.init(frame: CGRect.init(x: 100, y: 300, width: 200, height: 40))
     view.dataSource = ["最近24小时","最近3天","最近7天","自定义时间"]
     view.delegate = self
     view.selectedCallBack { (viewTemp, index) in
            
     }
     self.view.addSubview(view)
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
