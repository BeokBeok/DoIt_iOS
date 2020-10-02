//
//  ViewController.swift
//  WebView
//
//  Created by 강현석 on 2020/10/02.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var tfUrl: UITextField!
    @IBOutlet var wv: WKWebView!
    @IBOutlet var aiv: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wv.navigationDelegate = self
        loadWebPage("http://2sam.net")
    }
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        wv.load(myRequest)
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        aiv.startAnimating()
        aiv.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        aiv.stopAnimating()
        aiv.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        aiv.stopAnimating()
        aiv.isHidden = true
    }

    @IBAction func gotoUrl(_ sender: UIButton) {
    }
    
    @IBAction func gotoSite1(_ sender: UIButton) {
        loadWebPage("http://fallinmac.tistory.com")
    }
    
    @IBAction func gotoSite2(_ sender: UIButton) {
        loadWebPage("http://blog.2sam.net")
    }
    
    @IBAction func loadHtml(_ sender: UIButton) {
    }
    
    @IBAction func loadFile(_ sender: UIButton) {
    }
    
    @IBAction func stop(_ sender: UIBarButtonItem) {
        wv.stopLoading()
    }
    
    @IBAction func reload(_ sender: UIBarButtonItem) {
        wv.reload()
    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        wv.goBack()
    }
    
    @IBAction func goForward(_ sender: UIBarButtonItem) {
        wv.goForward()
    }
    
}

