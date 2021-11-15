//
//  LoginViewController.swift
//  PPTCOSTA_Cobsccomp192P_032
//
//  Created by pubudu tharuka on 2021-11-14.
//

import UIKit
import SwiftUI
import Firebase

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    //@StateObject private var test = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnLogin_Click(_ sender: Any) {
        
        let userViewModel = UserViewModel()
        userViewModel.SetUser(name: "1", email: txtEmail.text ?? "" , password: txtPassword.text ?? "1", NICNo: "1", VehicalNo: "1")
        userViewModel.UserLogin()
        let msg = userViewModel.GetMessage()
        
       if(userViewModel.GetStatus())
       {
                let alert = UIAlertController(title: "Alert Success", message: msg, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
            else
            {
                let alert = UIAlertController(title: "Alert Error", message: msg, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        
    }
    
}

class TestObject {
    var num: Int = 0
    
        
}

