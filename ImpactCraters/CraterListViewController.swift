//
//  CraterListViewController.swift
//  ImpactCraters
//
//  Created by Lorin on 4/6/20.
//  Copyright © 2020 Lorin. All rights reserved.
//

import UIKit

class CraterListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private let cellId = "CraterCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK:- UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CraterDataSource.craters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let craterCell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? CraterCell
   
        craterCell?.update(crater: CraterDataSource.craters[indexPath.row])
        
        return craterCell ?? UITableViewCell()
    }    
}

