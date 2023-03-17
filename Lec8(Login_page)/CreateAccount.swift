//
//  CreateAccount.swift
//  Lec8(Login_page)
//
//  Created by R91 on 21/01/23.
//

import UIKit

class CreateAccount: UIViewController {

    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var reEnterPasswordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func createAmazonAccount(_ sender: UIButton) {

        if usernameTextfield.text == ""
        {
        showAlert(title: "Enter your name.")
        }
        else if emailTextfield.text == ""
        {
            showAlert(title: "Enter your email.")
        }
        else if passwordTextfield.text == ""
        {
            showAlert(title: "Enter your password.")
        }
        else if reEnterPasswordTextfield.text == ""
        {
            showAlert(title: "Re-enter your password.")
        }
        else if passwordTextfield.text!.count < 6 && reEnterPasswordTextfield.text!.count < 6
        {
                    showAlert(title: "Password must be of 6 characters atleast.")
        }
        else if passwordTextfield.text!.count < 6
        {
                    showAlert(title: "Password must be of 6 characters atleast.")
        }
        else if  reEnterPasswordTextfield.text!.count < 6
        {
                    showAlert(title: "Re-entered password must be of 6 characters atleast.")
        }
        else if passwordTextfield.text != reEnterPasswordTextfield.text
        {
                    showAlert(title: "Re-entered password doesn't matches with password.")
        }
        navigateCreateAmazonAccount()
    }
    
    func navigateCreateAmazonAccount()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "AccountCreated") as! AccountCreated
        
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    func showAlert(title : String)
    {
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Delete", style: .destructive, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
