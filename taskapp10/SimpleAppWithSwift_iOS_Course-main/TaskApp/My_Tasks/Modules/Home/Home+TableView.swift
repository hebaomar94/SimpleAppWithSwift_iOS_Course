//
//  Home+TableView.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
   func setupTableView () {
        //old implementation
        //identifier cell
        //let cellId = String(describing:  TaskTableViewCell.self)
        //let nib = UINib(nibName: cellId , bundle:nil)
        //tabelView.register(nib, forCellReuseIdentifier: cellId)
        //to know the tableview how many cell contain or row ...
        
        //new
        tabelView.registerCellNib(TaskTableViewCell.self)
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
    
    
    //optional for section 1
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTasksTableViewList.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //old
        //let cellId = String(describing:  TaskTableViewCell.self)
        //let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? TaskTableViewCell
        //        cell?.configuer(with: myTasksList[indexPath.row])
        //
        //        return cell ?? UITableViewCell ()
       
        //new
        let cell = tableView.dequeue(TaskTableViewCell.self)
        cell.configuer(with: myTasksTableViewList[indexPath.row])
        return cell
    }
    
    /// Optional
    ///
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    /// Optional
    ///
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didSelectRowAt: \(indexPath.row)")
        
        let model = myTasksTableViewList[indexPath.row]
        print("Model: \(model)")
    }
}

