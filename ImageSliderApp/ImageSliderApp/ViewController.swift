//
//  ViewController.swift
//  ImageSliderApp
//
//  Created by Drashti Patel on 14/10/24.
//

import UIKit

class ViewController: UIViewController, KASlideShowDelegate {

    @IBOutlet weak var myslider: KASlideShow!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        myslider.delegate = self
        myslider.delay = 2 // Delay between transitions
        myslider.transitionDuration = 0.5 // Transition duration
        myslider.transitionType = KASlideShowTransitionType.slide // Choose a transition type (fade or slide)
        myslider.imagesContentMode = .scaleAspectFit // Choose a content mode for images to display
        myslider.addImages(fromResources: ["1.jpeg","2.jpeg","3.jpeg","4.jpeg"]) // Add images from resources
        //myslider.add(KASlideShowGestureType.tap) // Gesture to go previous/next directly on the image (Tap or Swipe)
        myslider.start()
    }


    
}

