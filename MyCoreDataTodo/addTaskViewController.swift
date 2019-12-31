//
//  addTaskViewController.swift
//  MyCoreDataTodo
//
//  Created by higuchiryunosuke on 2019/12/31.
//  Copyright © 2019年 higuchiryunosuke. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var isImportant: UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func btnTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textField.text!
        task.isImportant = isImportant.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    

}

