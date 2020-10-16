//
//  ViewController.swift
//  SwipeGesture
//
//  Created by 강현석 on 2020/10/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ivUp: UIImageView!
    @IBOutlet var ivDown: UIImageView!
    @IBOutlet var ivLeft: UIImageView!
    @IBOutlet var ivRight: UIImageView!
    
    var imgLeft = [UIImage]()
    var imgRight = [UIImage]()
    var imgUp = [UIImage]()
    var imgDown = [UIImage]()
    
    let numOfTouches = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgUp.append(UIImage(named: "arrow-up-black.png")!)
        imgUp.append(UIImage(named: "arrow-up-red.png")!)
        imgUp.append(UIImage(named: "arrow-up-green.png")!)
        imgDown.append(UIImage(named: "arrow-down-black.png")!)
        imgDown.append(UIImage(named: "arrow-down-red.png")!)
        imgDown.append(UIImage(named: "arrow-down-green.png")!)
        imgLeft.append(UIImage(named: "arrow-left-black.png")!)
        imgLeft.append(UIImage(named: "arrow-left-red.png")!)
        imgLeft.append(UIImage(named: "arrow-left-green.png")!)
        imgRight.append(UIImage(named: "arrow-right-black.png")!)
        imgRight.append(UIImage(named: "arrow-right-red.png")!)
        imgRight.append(UIImage(named: "arrow-right-green.png")!)
        
        ivUp.image = imgUp[0]
        ivDown.image = imgDown[0]
        ivLeft.image = imgLeft[0]
        ivRight.image = imgRight[0]
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeUpMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
        swipeUpMulti.direction = UISwipeGestureRecognizer.Direction.up
        swipeUpMulti.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeUpMulti)
        
        let swipeDownMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
        swipeDownMulti.direction = UISwipeGestureRecognizer.Direction.down
        swipeDownMulti.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeDownMulti)
        
        let swipeLeftMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
        swipeLeftMulti.direction = UISwipeGestureRecognizer.Direction.left
        swipeLeftMulti.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeLeftMulti)
        
        let swipeRightMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
        swipeRightMulti.direction = UISwipeGestureRecognizer.Direction.right
        swipeRightMulti.numberOfTouchesRequired = numOfTouches
        self.view.addGestureRecognizer(swipeRightMulti)
    }

    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            ivUp.image = imgUp[0]
            ivDown.image = imgDown[0]
            ivLeft.image = imgLeft[0]
            ivRight.image = imgRight[0]

            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                ivUp.image = imgUp[1]
            case UISwipeGestureRecognizer.Direction.down:
                ivDown.image = imgDown[1]
            case UISwipeGestureRecognizer.Direction.left:
                ivLeft.image = imgLeft[1]
            case UISwipeGestureRecognizer.Direction.right:
                ivRight.image = imgRight[1]
            default:
                break
            }
        }
    }
    
    @objc func respondToSwipeGestureMulti(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            ivUp.image = imgUp[0]
            ivDown.image = imgDown[0]
            ivLeft.image = imgLeft[0]
            ivRight.image = imgRight[0]

            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.up:
                ivUp.image = imgUp[2]
            case UISwipeGestureRecognizer.Direction.down:
                ivDown.image = imgDown[2]
            case UISwipeGestureRecognizer.Direction.left:
                ivLeft.image = imgLeft[2]
            case UISwipeGestureRecognizer.Direction.right:
                ivRight.image = imgRight[2]
            default:
                break
            }
        }
    }
}

