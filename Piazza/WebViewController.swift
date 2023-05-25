//
//  WebViewController.swift
//  Piazza
//
//  Created by John Wallace on 25/05/2023.
//

import UIKit
import Turbo

class WebViewController: VisitableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureDismissButton()
        // Do any additional setup after loading the view.
    }
    
    override func visitableDidRender() {
        navigationItem.title = visitableView.webView?.title
    }

    private func configureDismissButton() {
        if presentingViewController != nil {
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(dismissModal))
        }
    }
    
    @objc func dismissModal() {
        dismiss(animated: true)
    }

}
