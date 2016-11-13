//
//  ViewController.swift
//  AnimatedTransitioningSample
//
//  Created by Masanori Kuze on 2016/11/13.
//  Copyright © 2016年 Masanori Kuze. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nextButotn : UIButton = UIButton(frame: CGRect(x: self.view.frame.midX-50, y: self.view.frame.midY-50, width: 100, height: 100))
        nextButotn.backgroundColor = UIColor.blue
        nextButotn.setTitle("second", for: .normal)
        nextButotn.addTarget(self, action: #selector(onTapped), for: .touchUpInside)
        self.view.addSubview(nextButotn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func onTapped(sender: UIButton){
//        NSLog("tapped")
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let second = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        second.transitioningDelegate = self
        
        self.present(second, animated: true, completion: nil)
    }
    
    //遷移時アニメーション
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return Animation()
    }
    
    //戻る時のアニメーション
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return Animation()
    }
}

