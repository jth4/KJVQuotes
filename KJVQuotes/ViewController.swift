//
//  ViewController.swift
//  KJVQuotes-free
//
//  Created by jth4 on 10/15/17.
//  Copyright © 2017 jth4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
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

    
    // Swipes, taps, and buttons
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func tapScreen(_ sender: UITapGestureRecognizer) {
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.text = quoteProvider.randomQuote()
    }
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        quoteLabel.text = quoteProvider.randomQuote()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        quoteLabel.text = quoteProvider.randomQuote()
    }
}

