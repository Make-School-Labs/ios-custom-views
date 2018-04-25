//
//  ContentView.swift
//  custom-views
//
//  Created by Eliel Gordon on 4/24/18.
//  Copyright © 2018 MakeSchool. All rights reserved.
//

import UIKit

class ContentView: UIView, SwappableView {
    var swapDelegate: FeedRefreshDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    let dataSourceItems = [
        "This",
        "Is",
        "A",
        "Custom",
        "View"
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // Load Xib Components
    func setup() {
        tableView = loadNib(viewType: UITableView.self)
        addSubview(tableView)
        constrain(to: tableView)
    }
}
