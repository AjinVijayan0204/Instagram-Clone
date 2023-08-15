//
//  ViewController.swift
//  Instagram
//
//  Created by Ajin on 14/08/23.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //check authentication status
        handleNotAuthenticated()
    }

    private func handleNotAuthenticated(){
        if Auth.auth().currentUser == nil{
            // log in screen
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true)
        }
    }

}

