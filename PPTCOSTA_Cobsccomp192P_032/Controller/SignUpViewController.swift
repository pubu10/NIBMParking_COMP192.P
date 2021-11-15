//
//  SignUpViewController.swift
//  PPTCOSTA_Cobsccomp192P_032
//
//  Created by pubudu tharuka on 2021-11-14.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtReqNo: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtNicNo: UITextField!
    @IBOutlet weak var txtVehicalNo: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtRePassword: UITextField!
    @IBOutlet weak var txtEmal: UITextField!
    
    @IBOutlet weak var chk: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSignUp_Click(_ sender: Any) {
    
       if(chk.isOn)
       {
        
        Auth.auth().createUser(withEmail: txtEmal.text!, password: txtPassword.text!) { authResult, error in
            
            if(authResult != nil)
            {
                self.ShowMessage(msg: "Successfully Account Created !")
            }
            else
            {
                self.ShowMessage(msg: "Something went wrong !")
            }
        }
        
       }
        else
       {
        self.ShowMessage(msg: "You muct agree to terms.")
       }
    }
    
    func ShowMessage(msg : String) -> Void {
        let alert = UIAlertController(title: "Info", message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
