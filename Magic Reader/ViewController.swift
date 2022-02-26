//
//  ViewController.swift
//  Magic Reader
//
//  Created by Narek Kirakosyan on 25.02.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(tap))
        mainImage.isUserInteractionEnabled = true
        mainImage.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    @objc private func tap() {
        guard let url = URL(string: "myImageTracker://a") else { return }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
}

