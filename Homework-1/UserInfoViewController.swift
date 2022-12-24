//
//  UserInfoViewController.swift
//  Homework-1
//
//  Created by rasit on 23.12.2022.
//

import UIKit

protocol MyDataSendingDelegate: AnyObject {
    func name(name: String)
    func surname(surname: String)
    func age(age: String)
    func city(city: String)
}

class UserInfoViewController: UIViewController {
    
    var text : String = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    weak var delegate: MyDataSendingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = text
        surnameTextField.text = text
        ageTextField.text = text
        cityTextField.text = text
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let name = nameTextField.text {
            self.delegate?.name(name: name)
        }
        if let surname = surnameTextField.text {
            self.delegate?.surname(surname: surname)
        }
        if let age = ageTextField.text {
            self.delegate?.age(age: age)
        }
        if let city = cityTextField.text {
            self.delegate?.city(city: city)
        }
    }
}
