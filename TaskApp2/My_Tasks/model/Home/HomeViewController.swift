//
//  HomeViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 30/10/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        //old
        
        let cellId = String(describing:TaskTableViewCell.self)
        let nib = UINib(nibName: cellId, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellId)
        //new
        
        //tableView.registerCellNib(TaskTableViewCell.self)
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cellId = String(describing: TaskTableViewCell.self)
       let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? TaskTableViewCell
        //new
        
//        let cell = tableView.dequeue(TaskTableViewCell.self)
//        cell .configure(with: myTaskslist(indexPath.row))
        return cell ??  UITableViewCell()
    }
}
