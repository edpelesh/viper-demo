//
//  HelloViewController.swift
//  app
//
//  Created by Ideil on 29/11/2019.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit

final class HelloViewController: UIViewController, HelloViewInput {

    var output: HelloViewOutput?

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewIsReady()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        output?.prepare(for: segue)
    }
    
    @IBAction
    func didTapToggleButton() {
        output?.didTapToggleButton()
    }

    // MARK: HelloViewInput

    func setupInitialState() {
    }
    
    func toggleBackground(isRed: Bool) {
        if isRed { view.backgroundColor = .systemRed }
        else { view.backgroundColor = .systemGreen }
    }

}
