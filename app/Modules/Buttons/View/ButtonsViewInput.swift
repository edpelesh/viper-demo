//
//  ButtonsButtonsViewInput.swift
//  app
//
//  Created by Ideil on 01/02/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit
import ViperArch

protocol ButtonsViewInput: ModuleTransitionHandler {

    var segmentedControl: UISegmentedControl? { get }
    func setupInitialState()

}
