//
//  addTaskViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 07/11/2023.
//

import UIKit

class addTaskViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleTextField: AppTextField!
    @IBOutlet weak var dateTextField: AppTextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var selectTagCollectionView: UICollectionView!
    @IBOutlet weak var completeTaskButton: UIButton!
    @IBOutlet weak var manageTaskButton: UIButton!
    
    //send data
    private var myTask: MyTask?
    private var tags = [MyTaskTag]()
    private var selectedTag: MyTaskTag?
    
    
    init(myTask: MyTask? = nil) {
        self.myTask = myTask
        
        super.init(nibName: String(describing: Self.self),
                   bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myTask {
            titleLabel.text = "Task details"
            completeTaskButton.isHidden = false
            manageTaskButton.setTitle("Edit Task", for: .normal)
            
            manageTaskButton.backgroundColor = .primary
            manageTaskButton.setTitleColor(.white, for: .normal)
            manageTaskButton.borderColor = .primary
            manageTaskButton.borderWidth = 2
            

        } else {
            titleLabel.text = "Add Task"
            completeTaskButton.isHidden = true
            manageTaskButton.setTitle("Add Task", for: .normal)
            manageTaskButton.backgroundColor = .primary
            manageTaskButton.setTitleColor(.white, for: .normal)
            manageTaskButton.borderColor = .clear
            manageTaskButton.borderWidth = 0


        }
        tags.append(.init(title: "Workout",
                          color: .init(hex: 0xE55C5C)))
        
        tags.append(.init(title: "Finance",
                          color: .init(hex: 0x606AE9)))
        
        
        tags.append(.init(title: "Workout",
                          color: .init(hex: 0x53DF61)))
        
        
        setupCollectionView()
    }
    @IBAction func actionManageTask(_ sender: Any) {
    }
    
    @IBAction func actionCompleteTask(_ sender: Any) {
    }
    
}

extension addTaskViewController: UICollectionViewReference {
    
    func setupCollectionView() {
        selectTagCollectionView.registerCellNib(TagSelectionCell.self)
        selectTagCollectionView.delegate = self
        selectTagCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tags.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(TagSelectionCell.self, indexPath: indexPath)
        cell.configure(with: tags[indexPath.item])
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = tags [indexPath.item]
        
        
        if model.isSelected ==  false {
            tags.forEach { item in item.isSelected = false }
            model.isSelected = true
        } else {
            
            model.isSelected = false
            
        }
        
        if model.isSelected {
            selectedTag = model
        } else {
            selectedTag = nil
        }
        selectTagCollectionView.reloadData()
    }
}
