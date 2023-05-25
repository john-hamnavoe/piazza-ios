//
//  RoutingController.swift
//  Piazza
//
//  Created by John Wallace on 25/05/2023.
//

import UIKit
import Turbo
import SafariServices
import WebKit

class RoutingController: BaseNavigationController {
    private static var sharedProcessPool = WKProcessPool()
    
    private(set) lazy var session: Session = {
        let session = Self.createSession()
        session.delegate = self
        return session
    }()

    private static func createSession() -> Session {
        let configuration = WKWebViewConfiguration()
        configuration.applicationNameForUserAgent = "Piazza Turbo Native iOS"
  
        configuration.processPool = sharedProcessPool
        let session = Session(webViewConfiguration: configuration)
        session.pathConfiguration = Global.pathConfiguration
        
        return session
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshWebView()
    }
    
    func refreshWebView() {
        if let vc = topViewController as? VisitableViewController {
            session.visit(vc)
        }
    }
}

extension RoutingController: SessionDelegate {
    func session(_ session: Session, didProposeVisit proposal: VisitProposal) {}
  
    func session(_ session: Session, didFailRequestForVisitable visitable: Visitable, error: Error) {}
    
    func sessionWebViewProcessDidTerminate(_ session: Session) {}
}
