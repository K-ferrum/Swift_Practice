//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Tife on 2020/08/10.
//  Copyright © 2020 Tife. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speedLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let images = [UIImage(named: "0.jpg")!,
                      UIImage(named: "2.jpg")!,
                      UIImage(named: "3.jpg")!,
                      UIImage(named: "4.jpg")!,
                      UIImage(named: "5.jpg")!,
                      UIImage(named: "7.jpg")!,
                      UIImage(named: "9.jpg")!,
                      UIImage(named: "10.jpg")!,
                      UIImage(named: "12.jpg")!,
                      UIImage(named: "14.jpg")!,
                      UIImage(named: "15.jpg")!,
                      UIImage(named: "16.jpg")!]
                
        imgView.animationImages = images
        imgView.animationDuration = 15
        speedLable.text = String(format: "%.2f", speedSlider.value)
        
    }
    
    @IBAction func toggleButton(_ sender: Any){
        
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControl.State.normal)
        }else{
            imgView.animationDuration = Double(speedSlider.value)
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControl.State.normal)
        }
    }
    
    @IBAction func speedSliderAction(_ sender: Any){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControl.State.normal)
        speedLable.text = String(format: "%.2f", speedSlider.value)
    }

}

