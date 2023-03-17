//
//  ForgotPasswordPage.swift
//  Lec8(Login_page)
//
//  Created by R91 on 26/01/23.
//

import UIKit

class ForgotPasswordPage: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var emailOrPhoneTextfield: UITextField!
    @IBOutlet weak var resetPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundView()
        setResetPasswordButton()
        setEmailOrPhoneTextfield()
    }
    
    func setEmailOrPhoneTextfield()
    {
        emailOrPhoneTextfield.layer.borderWidth = 1
        emailOrPhoneTextfield.layer.borderColor = UIColor.white.cgColor
    }
    
    func setBackgroundView()
    {
        backgroundView.layer.borderWidth = 1
        backgroundView.layer.borderColor = UIColor.systemBlue.cgColor
        backgroundView.layer.cornerRadius = 10
    }

    func setResetPasswordButton()
    {
        resetPasswordButton.layer.borderWidth = 1
        resetPasswordButton.layer.cornerRadius = 20
    }
    
    @IBAction func ResetPasswordButton(_ sender: UIButton) {
        if emailOrPhoneTextfield.text == ""
        {
            showAlert(title: "Enter your email or phone.")
        }
       
        else if emailOrPhoneTextfield.text!.count < 10
        {
            showAlert(title: "Enter atleast 10 digits.")
        }
        else if emailOrPhoneTextfield.text!.count > 10
        {
            showAlert(title: "Phone number must be only of 10 digits.")
        }
        navigateResetPasswordBack()
    }

    
    func navigateResetPasswordBack()
    {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func showAlert(title:String)
    {
        let alert = UIAlertController.init(title: "Error", message: title , preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
