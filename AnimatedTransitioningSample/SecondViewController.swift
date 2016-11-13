//
//  SecondViewController.swift
//  AnimatedTransitioningSample
//
//  Created by Masanori Kuze on 2016/11/13.
//  Copyright © 2016年 Masanori Kuze. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButotn : UIButton = UIButton(frame: CGRect(x: self.view.frame.midX-50, y: self.view.frame.midY-50, width: 100, height: 100))
        nextButotn.backgroundColor = UIColor.blue
        nextButotn.setTitle("first", for: .normal)
        nextButotn.addTarget(self, action: #selector(onTapped), for: .touchUpInside)
        self.view.addSubview(nextButotn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func onTapped(sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }

    
}
