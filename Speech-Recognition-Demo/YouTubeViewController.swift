//
//  YouTubeViewController.swift
//  Lizzy-Project-Demo
//
//  Created by Michael Albinson on 2019-11-24.
//  Copyright © 2019 Michael Albinson. All rights reserved.
//

import UIKit
import WebKit

class YouTubeViewControoler: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    var searchText = ""
    
    override func viewDidLoad() {
        webView.uiDelegate = self
        
        let query = searchText.replacingOccurrences(of: " ", with: "+")
        let myURL = URL(string: "https://www.youtube.com/results?search_query=" + query)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        super.viewDidLoad()
    }
}
