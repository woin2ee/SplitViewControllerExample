//
//  SideBarViewController.swift
//  SplitViewControllerExample
//
//  Created by Jaewon Yun on 4/4/24.
//

import UIKit

final class SideBarViewController: UITableViewController {
    
    weak var contentViewController: ContentViewController?
    
    private let menu: [String] = [
        "First",
        "Second",
        "Third",
        "Fourth",
    ]
    
    override func loadView() {
        self.tableView = UITableView(frame: .zero, style: .insetGrouped)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = false
        self.view.backgroundColor = .systemGroupedBackground
    }
}

extension SideBarViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var config = UIListContentConfiguration.sidebarCell()
        config.text = menu[indexPath.row]
        
        let cell = UITableViewCell()
        cell.contentConfiguration = config
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        contentViewController?.content = menu[indexPath.row]
    }
}
