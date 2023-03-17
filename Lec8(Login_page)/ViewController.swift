//
//  ViewController.swift
//  Lec8(Login_page)
//
//  Created by R91 on 19/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var setUserNameTextfield: UITextField!
    @IBOutlet weak var setPasswordTextfield: UITextField!
    @IBOutlet weak var setLoginButton: UIButton!
    @IBOutlet weak var setCreateButton: UIButton!
    @IBOutlet weak var setForgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserNameTextField()
        PasswordTextField()
        LoginButton()
        CreateButton()
    }
    
    func UserNameTextField()
    {
        setUserNameTextfield.layer.borderWidth = 1
        setUserNameTextfield.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    func PasswordTextField()
    {
        setPasswordTextfield.layer.borderWidth = 1
        setPasswordTextfield.layer.borderColor = UIColor.darkGray.cgColor
    }
    
    func LoginButton()
    {
        setLoginButton.layer.borderWidth = 1
        setLoginButton.layer.borderColor = UIColor.gray.cgColor
    }
    
    func CreateButton()
    {
        setCreateButton.layer.borderWidth = 1
        setCreateButton.layer.borderColor = UIColor.gray.cgColor
    }
    
    

    @IBAction func loginButtonAction(_ sender: UIButton) {
        if setUserNameTextfield.text == "" && setPasswordTextfield.text == ""
        {
            showalert(title:"Please enter your username and password.")
        }
        else if setUserNameTextfield.text == ""
        {
            showalert(title: "Please enter your username.")
        }
        else if setPasswordTextfield.text == ""
        {
            showalert(title: "Please enter your password.")
        }
        navigate()
        self.view.endEditing(true)
        
    }
    
    func showalert(title:String)
    {
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Delete", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func navigate()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func createButtonAction(_ sender: UIButton) {
        navigateCreateButton()
    }
    
    func navigateCreateButton()
    {
        let navigationCreateButton = storyboard?.instantiateViewController(withIdentifier: "CreateAccount") as! CreateAccount
        navigationController?.pushViewController(navigationCreateButton, animated: true)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        navigateForgotPasswordButton()
    }
    
    func navigateForgotPasswordButton()
    {
        let navigationForgotPassword = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordPage")
        as! ForgotPasswordPage
        navigationController?.pushViewController(navigationForgotPassword, animated: true)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}

