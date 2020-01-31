//
//  ButtonsButtonsViewOutput.swift
//  app
//
//  Created by Ideil on 01/02/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit
import ViperArch

protocol ButtonsViewOutput: ModuleInput, ButtonsModuleInput {

    func viewIsReady()
    func didChangeSegment()

}
