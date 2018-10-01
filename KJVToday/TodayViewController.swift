//
//  TodayViewController.swift
//  KJVToday
//
//  Created by jth4 on 9/23/18.
//  Copyright © 2018 jth4. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var todayLabel: UILabel!
    let quoteProvider = QuoteProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.extensionContext?.widgetLargestAvailableDisplayMode = .expanded
        todayLabel.text = quoteProvider.randomQuote()
        
    }
    
    //Tap and Press
    @IBAction func onTodayTap(_ sender: Any) {
        todayLabel.text = quoteProvider.randomQuote()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        if activeDisplayMode == .compact {
            self.preferredContentSize = maxSize
        } else {
            self.preferredContentSize = CGSize(width: 0, height: 177)
        }
        
    }
    

    
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
