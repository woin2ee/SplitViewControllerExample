//
//  ContentViewController.swift
//  SplitViewControllerExample
//
//  Created by Jaewon Yun on 4/4/24.
//

import UIKit

final class ContentViewController: UIViewController {

    public var content: String = "" {
        didSet {
            contentLabel.text = content
        }
    }
    
    let contentLabel = {
        let label = UILabel()
        label.text = "Content"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(contentLabel)
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentLabel.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            contentLabel.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
}
