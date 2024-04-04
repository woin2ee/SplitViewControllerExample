//
//  RootSplitViewController.swift
//  SplitViewControllerExample
//
//  Created by Jaewon Yun on 4/4/24.
//

import UIKit

final class RootSplitViewController: UISplitViewController {

    let sideBarVC = SideBarViewController()
    let contentVC = ContentViewController()
    
    init() {
        super.init(style: .doubleColumn)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredSplitBehavior = .tile
        self.preferredDisplayMode = .secondaryOnly
        
        sideBarVC.contentViewController = contentVC
        
        self.viewControllers = [sideBarVC, contentVC]
    }
}
