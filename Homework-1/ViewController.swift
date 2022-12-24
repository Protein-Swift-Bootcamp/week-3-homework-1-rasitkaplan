//
//  ViewController.swift
//  Homework-1
//
//  Created by rasit on 23.12.2022.
//

import UIKit

class ViewController: UIViewController , MyDataSendingDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func name(name: String) {
        nameLabel.text = "Name : " + name
    }
    
    func surname(surname: String) {
        surnameLabel.text = "Surname : " + surname
    }
    
    func age(age: String) {
        ageLabel.text = "Age : " + age
    }
    
    func city (city: String) {
        cityLabel.text = "City : " + city
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is UserInfoViewController {
            let vc = segue.destination as? UserInfoViewController
            vc?.delegate = self
        }
    }
}

