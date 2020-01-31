//
//  ButtonsButtonsViewController.swift
//  app
//
//  Created by Ideil on 01/02/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit

final class ButtonsViewController: UIViewController, ButtonsViewInput {
    
    var output: ButtonsViewOutput?
    
    @IBOutlet
    weak var segmentedControl: UISegmentedControl?

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewIsReady()
    }
    
    @IBAction
    func didChangeSegment(_ sender: UISegmentedControl) {
        output?.didChangeSegment()
    }
    

    // MARK: ButtonsViewInput

    func setupInitialState() {
    }

}
