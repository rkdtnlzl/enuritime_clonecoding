//
//  LoginViewController.swift
//  enurytime
//
//  Created by 강석호 on 2022/12/27.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController {
    
    private let titleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "login_title_icon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(w: 166)
        label.textAlignment = .center
        label.text = "네고생활을 더 편하고 더 즐겁게"
        label.numberOfLines = 1
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        label.textColor = UIColor(r: 198, g: 41, b: 23)
        label.textAlignment = .center
        label.text = "에누리타임"
        label.numberOfLines = 1
        return label
    }()
    
    private let idtextField: InsetTextField = {
        let textField = InsetTextField()
        textField.insetX = 16
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "아이디"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.backgroundColor = UIColor(w: 242)
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 20
        textField.clipsToBounds = true
        return textField
    }()
    
    private let passwordtextField: InsetTextField = {
        let textField = InsetTextField()
        textField.insetX = 16
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "비밀번호"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.backgroundColor = UIColor(w: 242)
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 20
        textField.clipsToBounds = true
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("에누리타임 로그인", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(r: 198, g: 41, b: 23)
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        return button
    }()
    
    private let signupButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("회원가입", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.setTitleColor(UIColor(w: 41), for: .normal)
        return button
    }()
    
    private let contrainer: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.spacing = 4
        stackView.axis = .vertical
        stackView.alignment = .center
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.contrainer)
        
        
        self.contrainer.addArrangedSubview(self.titleImageView)
        self.contrainer.addArrangedSubview(self.descriptionLabel)
        self.contrainer.addArrangedSubview(self.titleLabel)
        self.contrainer.addArrangedSubview(self.idtextField)
        self.contrainer.addArrangedSubview(self.passwordtextField)
        self.contrainer.addArrangedSubview(self.loginButton)
        self.contrainer.addArrangedSubview(self.signupButton)
        
        self.contrainer.setCustomSpacing(10, after: titleImageView)
        self.contrainer.setCustomSpacing(40, after: titleLabel)
        self.contrainer.setCustomSpacing(30, after: loginButton)
        
        NSLayoutConstraint.activate([
            self.contrainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50),
            self.contrainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            self.contrainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            self.titleImageView.heightAnchor.constraint(equalToConstant: 60),
            self.titleImageView.widthAnchor.constraint(equalToConstant: 60),
            
            self.idtextField.leadingAnchor.constraint(equalTo: self.contrainer.leadingAnchor),
            self.idtextField.leadingAnchor.constraint(equalTo: self.contrainer.trailingAnchor),
            self.idtextField.heightAnchor.constraint(equalToConstant: 40),
            
            self.passwordtextField.leadingAnchor.constraint(equalTo: self.contrainer.leadingAnchor),
            self.passwordtextField.leadingAnchor.constraint(equalTo: self.contrainer.trailingAnchor),
            self.passwordtextField.heightAnchor.constraint(equalToConstant: 40),
            
            self.loginButton.leadingAnchor.constraint(equalTo: self.contrainer.leadingAnchor),
            self.loginButton.leadingAnchor.constraint(equalTo: self.contrainer.trailingAnchor),
            self.loginButton.heightAnchor.constraint(equalToConstant: 40),
            
        ])
    }
}
