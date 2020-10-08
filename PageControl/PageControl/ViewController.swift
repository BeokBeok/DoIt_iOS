//
//  ViewController.swift
//  PageControl
//
//  Created by 강현석 on 2020/10/08.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png" ]

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imageView.image = UIImage(named: images[0])
    }

    @IBAction func changePage(_ sender: UIPageControl) {
        imageView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

