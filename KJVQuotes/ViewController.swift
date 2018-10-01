//
//  ViewController.swift
//  KJVQuotes-free
//
//  Created by jth4 on 10/15/17.
//  Copyright © 2017 jth4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: SpringLabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    let quoteProvider = QuoteProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.text = quoteProvider.randomQuote()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSharePressed(_ sender: Any) {
        let activityVC = UIActivityViewController(activityItems: [quoteLabel.text ?? "KJV Quotes"], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        self.present(activityVC, animated: true, completion: nil)
    
    }
    
    // Swipes, taps, and buttons
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.animation = "fadeInDown"
        quoteLabel.duration = 1.0
        quoteLabel.animate()
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.animation = "fadeInUp"
        quoteLabel.duration = 1.0
        quoteLabel.animate()
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func tapScreen(_ sender: UITapGestureRecognizer) {
        quoteLabel.animation = "fadeIn"
        quoteLabel.duration = 1.0
        quoteLabel.animate()
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.animation = "fadeInLeft"
        quoteLabel.duration = 1.0
        quoteLabel.animate()
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.animation = "fadeInRight"
        quoteLabel.duration = 1.0
        quoteLabel.animate()
        quoteLabel.text = quoteProvider.randomQuote()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        quoteLabel.animation = "fadeIn"
        quoteLabel.duration = 1.0
        quoteLabel.animate()
        quoteLabel.text = quoteProvider.randomQuote()
    }
}

