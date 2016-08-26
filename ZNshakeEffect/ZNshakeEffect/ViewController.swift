//
//  ViewController.swift
//  ZNshakeEffect
//
//  Created by 赵恩峰 on 16/8/27.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

import UIKit

func angleToRadio(angle : Double) -> (Double) {return angle * M_PI / 180.0}


class ViewController: UIViewController {

    var ZNimange = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        ZNimange = UIImageView(image: UIImage(named: "icon"))
        ZNimange.center = view.center
        view.addSubview(ZNimange)
    
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let anim = CAKeyframeAnimation()
        anim.keyPath = "transform.rotation"
        anim.values = [[angleToRadio(-5)],[angleToRadio(5)],[angleToRadio(-5)]]
        
        //anim.repeatCount = HUGE;//无线次数
        anim.repeatCount = 15;
        anim.autoreverses = true;
        anim.duration = 0.1;
        //添加动画
        ZNimange.layer.addAnimation(anim, forKey: nil)
        
        
    }

}

