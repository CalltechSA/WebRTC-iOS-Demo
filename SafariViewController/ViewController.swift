//
//  ViewController.swift
//  SafariViewController
//
//  Created by Administrador on 1/14/20.
//  Copyright © 2020 Administrador. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func go(_ sender: Any) {
        load(url: "https://clicktocall.calltechsa.com/clicktovideo/clicktovideo.html")
        
    }
    
    func load(url: String ) {
        print("loading...")
        guard let url = URL(string: url) else { return }
        let viewSafari = SFSafariViewController(url: url)
        
        present(viewSafari, animated: true)
        viewSafari.delegate = self
    }


}

