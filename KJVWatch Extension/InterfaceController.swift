//
//  InterfaceController.swift
//  KJVWatch Extension
//
//  Created by jth4 on 9/23/18.
//  Copyright © 2018 jth4. All rights reserved.
//

import WatchKit
import Foundation
import ClockKit



class InterfaceController: WKInterfaceController {

    // MY OUTLETS
    @IBOutlet var quoteLabelWatch: WKInterfaceLabel!
    @IBAction func onWatchTap(_ sender: Any) {
        quoteLabelWatch.setText(quoteProvider.randomQuote())
    }
    
    let quoteProvider = QuoteProvider()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        quoteLabelWatch.setText(quoteProvider.randomQuote())

    }
    


    
    
    


    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
