//
//  ViewController.swift
//  Assignment5Code
//
//  Created by Ts SaM on 28/4/2023.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .lightGray
    
    let avatorImageView = UIImageView()
    avatorImageView.translatesAutoresizingMaskIntoConstraints = false
    avatorImageView.layer.cornerRadius = view.bounds.width * 0.25
    avatorImageView.clipsToBounds = true
    avatorImageView.contentMode = .scaleAspectFill
    avatorImageView.image = UIImage(named: "open_mac")
    view.addSubview(avatorImageView)
    
    NSLayoutConstraint.activate([
      avatorImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
      avatorImageView.heightAnchor.constraint(equalTo: avatorImageView.widthAnchor),
      avatorImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      avatorImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
    ])
    
    
    let userTextField = UITextField()
    userTextField.translatesAutoresizingMaskIntoConstraints = false
    userTextField.borderStyle = .roundedRect
    userTextField.placeholder = "User Name / Email Address"
    userTextField.backgroundColor = .clear
    userTextField.layer.borderWidth = 2
    userTextField.layer.borderColor = UIColor.white.cgColor
    userTextField.attributedPlaceholder = NSAttributedString(string: "Usernme / Email Address", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    view.addSubview(userTextField)
    
    NSLayoutConstraint.activate([
      userTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
      userTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      userTextField.topAnchor.constraint(equalTo: avatorImageView.bottomAnchor, constant: 50)
    ])
    
    
    let passwordTextField = UITextField()
    passwordTextField.translatesAutoresizingMaskIntoConstraints = false
    passwordTextField.borderStyle = .roundedRect
    passwordTextField.placeholder = "Password"
    passwordTextField.backgroundColor = .clear
    passwordTextField.isSecureTextEntry = true
    passwordTextField.layer.borderWidth = 2
    passwordTextField.layer.borderColor = UIColor.white.cgColor
    passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    view.addSubview(passwordTextField)
    
    NSLayoutConstraint.activate([
      passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
      passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 20)
    ])
    
    
    let forgotButton = UIButton(type: .custom)
    forgotButton.translatesAutoresizingMaskIntoConstraints = false
    forgotButton.setTitle("Forgot Password?", for: .normal)
    view.addSubview(forgotButton)
    
    NSLayoutConstraint.activate([
      forgotButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
      forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      forgotButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20)
    ])
    
    
    let loginButton = UIButton()
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    loginButton.setTitle("Login", for: .normal)
    loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    loginButton.setTitleColor(.white, for: .normal)
    loginButton.backgroundColor = .blue
    view.addSubview(loginButton)
    
    NSLayoutConstraint.activate([
      loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
      loginButton.heightAnchor.constraint(equalToConstant: 50),
      loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      loginButton.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 20)
    ])
    
    loginButton.addTarget(self, action: #selector(goToSecondViewTapped(_:)), for: .touchUpInside)
    
    
    let fbLoginButton = UIButton()
    fbLoginButton.translatesAutoresizingMaskIntoConstraints = false
    fbLoginButton.setTitle("Login With Facebook", for: .normal)
    fbLoginButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    fbLoginButton.setTitleColor(.white, for: .normal)
    fbLoginButton.backgroundColor = .systemCyan
    view.addSubview(fbLoginButton)
    
    NSLayoutConstraint.activate([
      fbLoginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
      fbLoginButton.heightAnchor.constraint(equalToConstant: 50),
      fbLoginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      fbLoginButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30)
    ])
    
    
    let registerButton = UIButton(type: .custom)
    registerButton.translatesAutoresizingMaskIntoConstraints = false
    registerButton.setTitle("Create Account", for: .normal)
    registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .regular)
    view.addSubview(registerButton)
    
    NSLayoutConstraint.activate([
      registerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
      registerButton.heightAnchor.constraint(equalToConstant: 50),
      registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -5)
    ])
    
  }
  
  
  @objc func goToSecondViewTapped(_ sender:  UIButton) {
    print("Tapped")
    let svc = SecondViewController()
    navigationController?.pushViewController(svc, animated: true)
  }
  

  
}

