//
//  ViewController.swift
//  LifeCycleMaster
//
//  Created by tlc on 2018/4/9.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addOrRemoveViewButton: UIButton!
    
    
    lazy var bottomView: AyaView = {
        if let view = Bundle.main.loadNibNamed("AyaView", owner: self, options: nil)?.first as? AyaView {
            return view
        }
        return AyaView()
    }()
    
    // MARK: - life Cycle
    // 非storyBoard(xib或非xib)都走这个方法
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        PrintLog(message:"从xib和非xib初始化")
    }
    
    // 如果连接了串联图storyBoard 走这个方法
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        PrintLog(message:"从stroyboard")
    }
    
    // xib 加载 完成
    override func awakeFromNib() {
        super.awakeFromNib()
        
        PrintLog(message:"从awakeFromNib")
    }
    
    // 加载视图(默认从nib)
    override func loadView() {
        super.loadView() // 从nib或者storyBoard中查找默认的loadView
        
        PrintLog()
        
        // 注意的是此方法用在初始化self.view， 在view未初始化之前不能调用其getter方法，否则将导致死循环（除非先调用了super.loadView）
        self.view.backgroundColor = UIColor.green
    }
    
    /** 正确做法
     override func loadView() {
     
     PrintLog()
     
     // 先初始化view
     self.view = UIView()
     self.view.backgroundColor = UIColor.green
     }
     */
    
    // 视图控制器中的视图加载完成，viewController自带的view加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PrintLog()
    }
    
    // 视图将要出现
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        PrintLog()
    }
    
    // view 即将布局其 Subviews
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        PrintLog()
    }
    
    // view 已经布局其 Subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        PrintLog()
    }
    
    // 视图已出现
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        PrintLog()
    }
    
    // 视图将要消失
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        PrintLog()
    }
    
    // 视图已消失
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        PrintLog()
    }
    
    deinit {
        print(#file,"被销毁")
    }
    
    /**
     我们能看到手机上的视图都是UIView还有它的子UIView，当然不能杂乱无章的显示。要进行布局，父UIView需要布局、排列这些子UIView。UIView提供了layoutSubviews方法来处理。
     
     需要注意的是layoutSubviews方法由系统来调用，不能程序员来手动调用。可以调用setNeedsLayout方法进行标记，以保证在UI下个刷屏循环中系统会调用layoutSubviews。或者调用layoutIfNeeded直接请求系统调用layoutSubviews。
     
     layoutSubviews的被调用的时机：
     
     addSubview会触发layoutSubviews，比如viewA add viewB，第一次添加A和B的layoutSubviews都会被调用，而第二次(viewA已经有了viewB)只调用viewB的
     view的Frame变化会触发layoutSubviews
     滚动一个UIScrollView会触发layoutSubviews
     旋转Screen会触发父UIView上的layoutSubviews
     改变transform属性时，当然frame也会变
     处于key window的UIView才会调用(程序同一时间只有一个window为keyWindow，可以简单理解为显示在最前面的window为keywindow)
     最后总结一句话就是，有必要时才会调用，比如设置Frame值没有变化，是不会被调用的，很明显没有必要
     */
    
    // MARK: - Action Methods
    @IBAction func viewAction(_ sender: UIButton) {
        if sender.currentTitle == "添加一个视图" {
            sender.setTitle("移除添加的视图", for: .normal)
            addSubView()
        }else{
            sender.setTitle("添加一个视图", for: .normal)
            removeSubView()
        }
    }
    

    // MARK: - ui

    func addSubView() {
        self.bottomView.frame = CGRect.init(x: 0, y: self.view.bounds.height-120-49, width: self.view.bounds.width, height: 120)
        self.view.addSubview(self.bottomView)
    }
    
    func removeSubView() {
        self.bottomView.removeFromSuperview()
    }
    
    // MARK: - 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        PrintLog()
    }

}

