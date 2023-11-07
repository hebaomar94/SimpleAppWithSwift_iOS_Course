//
//  Home+collectionView.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit


extension HomeViewController: UICollectionViewReference,
                              UICollectionViewDelegateFlowLayout{
    
    func  setupCollectionView () {
        collectionview.registerCellNib(TaskCollectionViewCell.self)
        let padding = 16.5
        collectionview.contentInset = .init(top: 0, left: padding, bottom: 0, right: padding)
        collectionview.delegate = self
        collectionview.dataSource = self

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myTasksCollectionViewList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue( TaskCollectionViewCell.self, indexPath: indexPath)
        cell.configuer(with: myTasksCollectionViewList[indexPath.item])
        return cell
    }
    //resize
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width
        let cellWidth = screenWidth * 0.8
        return.init(width: cellWidth, height: 153)
    }
    
//reback item which we selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    }
    
}
