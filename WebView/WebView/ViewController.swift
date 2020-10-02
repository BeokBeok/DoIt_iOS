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
    
    func checkUrl(_ url: String) -> String {
        var strUrl = url
        let flag = strUrl.hasPrefix("http://")
        if !flag {
            strUrl = "http://" + strUrl
        }
        return strUrl
    }

    @IBAction func gotoUrl(_ sender: UIButton) {
        let myUrl = checkUrl(tfUrl.text!)
        tfUrl.text = ""
        loadWebPage(myUrl)
    }
    
    @IBAction func gotoSite1(_ sender: UIButton) {
        loadWebPage("http://fallinmac.tistory.com")
    }
    
    @IBAction func gotoSite2(_ sender: UIButton) {
        loadWebPage("http://blog.2sam.net")
    }
    
    @IBAction func loadHtml(_ sender: UIButton) {
        let htmlString = "<h1> HTML String </h1><p> String 변수를 이용한 웹 페이지 </p><p><a href=\"http://2sam.net\">2sam</a>으로 이동</p>"
        wv.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func loadFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "HtmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        wv.load(myRequest)
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

