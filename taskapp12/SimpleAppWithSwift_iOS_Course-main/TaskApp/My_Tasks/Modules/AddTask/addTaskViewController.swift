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
    
    
    var tags = [MyTaskTag]()
    //send data
    
     //var tags = [MyTaskTag]()
    private var myTask: MyTask?
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
        tags = TaskFactory().tags
        
        if let myTask {
            setupEditUI(my: myTask )

        } else {

            setupAddUI()

        }
       
        
        
        setupCollectionView()
        //to prevent the user selected anything in field of date picker
        dateTextField.delegate = self
    }
    
    private func setupEditUI (my Task: MyTask) {
        titleLabel.text = "Task details"
        completeTaskButton.isHidden = false
        manageTaskButton.setTitle("Edit Task", for: .normal)
        
        manageTaskButton.backgroundColor = .primary
        manageTaskButton.setTitleColor(.white, for: .normal)
        manageTaskButton.borderColor = .primary
        manageTaskButton.borderWidth = 2
        
        
        
        
        
        
        
        
        //Fill data
        titleTextField.text = myTask?.title
        dateTextField.text = "\( myTask?.date)"
        descriptionTextView.text = myTask?.descriptionTitle
        
        tags.forEach {
            item in if item.title == myTask?.title {
                item.isSelected = true
            }
        }
    }
    private func setupAddUI() {
        titleLabel.text = "Add Task"
        completeTaskButton.isHidden = true
        manageTaskButton.setTitle("Add Task", for: .normal)
        manageTaskButton.backgroundColor = .primary
        manageTaskButton.setTitleColor(.white, for: .normal)
        manageTaskButton.borderColor = .clear
        manageTaskButton.borderWidth = 0
    }
    @IBAction func actionManageTask(_ sender: Any) {
        if let myTask {
            //edit task

          
        } else {
            //add task
            let title = titleTextField.text ?? ""
            let description = descriptionTextView.text ?? ""
            let date = dateTextField.text ?? ""
            let tagTitle = selectedTag?.title ?? ""
            let tagColor = selectedTag?.color
            
            //selectedTag optional
            guard let selectedTag else {return}
            
            let newTask = MyTask(
                id: "#123",
                title: title,
                descriptionTitle: description, 
                date: date,
                tag: selectedTag)
            //save date
            CoreDataManager().save(model: newTask)
            dismiss(animated: true)
        }
    }
    
    @IBAction func actionCompleteTask(_ sender: Any) {
    }
    
}


//to implement the line of dateTextField.delegate = self


extension addTaskViewController: UITextFieldDelegate {
    //this func return bool if true so the user can write if not he can't editing
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == dateTextField {
            //present date picker
            let vc = DatePickerViewController{
                Date in
                
                
                //how write this
                //" sunday 12/11/2023 10:30 am"
                //date formate
                let formatter = DateFormatter()
                formatter.dateFormat = "EEEE dd/MM/yyyy hh:mm a"
                //date as sitring
                self.dateTextField.placeholder = formatter.string(from: Date)
                
                
            }
            // present for screen as fullscreen
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true)
            return false
        }
       
        return true
    }
}



extension addTaskViewController: UICollectionViewReference,
                          //size el tag manual if not appear
UICollectionViewDelegateFlowLayout {
    
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
    //size el tag manual if not appear

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 40)
    }
}
