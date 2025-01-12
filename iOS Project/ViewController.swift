//
//  ViewController.swift
//  iOS Project
//
//  Created by harry.li on 2024/12/16.
//

import UIKit
import WebKit
import ZMarkupParser

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var footerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.load(URLRequest(url: URL(string: "https://zhgchg.li")!))
        
        let parser = ZHTMLParserBuilder.initWithDefault().build()
        footerLabel.attributedText = parser.render(#"© <strong>2025</strong>  <a href="https://zhgchg.li" target="_blank">ZhgChgLi</a>."#)
    }


}

