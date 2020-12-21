//
//  ViewController.swift
//  TexturePractice
//
//  Created by 오준현 on 2020/12/20.
//

import UIKit

import AsyncDisplayKit

class ViewController: ASDKViewController<TestNode> {

    override init() {
        super.init(node: TestNode.init())
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
