//
//  Home+TableView.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
   func setupTableView () {
        tabelView.registerCellNib(TaskTableViewCell.self)
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTasksTableViewList.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

       
        //new
        let cell = tableView.dequeue(TaskTableViewCell.self)
        cell.configuer(with: myTasksTableViewList[indexPath.row])
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = myTasksTableViewList[indexPath.row]
        presentTask(model)
    }
}

