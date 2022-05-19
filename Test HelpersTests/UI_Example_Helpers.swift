//
//  UI_Example_Helpers.swift
//  Test HelpersTests
//
//  Created by Trevor Whittingham on 5/19/22.
//

import XCTest

class UI_Example_Helpers: XCTestCase {
    
    func test_UI_Example() throws {
        
        // Initialize a view controller, passing in a presenter spy, etc
        
        // let vc = ViewController()
        
        
        // trigger it's actions
        
        // vc.view.refreshButton.simulateTapInAppTarget()
        // vc.view.refreshButton.simulateEventInFramework(event: .touchUpInside)
        
        
        // Verify that the spy received the appropriate messages
        
        
        // Verify that the UI is displaying the right stuff e.g. activity indicator


        // Have the presenter spy complete the "load" with some stubbed data
        
        
        // Verify that the UI is displaying the right stuff e.g. the right number of cells, the right text in the cells
        
        
        // SwiftUI Note
        // We can use some 3rd party frameworks to inspect UI when using SwiftUI
    }
    
}

extension UIButton {
    func simulateTapInAppTarget() {
        sendActions(for: .touchUpInside)
    }
}

extension UIControl {
    func simulateEventInFramework(_ event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}

