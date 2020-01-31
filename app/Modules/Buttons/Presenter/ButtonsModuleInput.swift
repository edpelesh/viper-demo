//
//  ButtonsButtonsModuleInput.swift
//  app
//
//  Created by Ideil on 01/02/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import Foundation
import ViperArch

protocol ButtonsModuleInput: class {

    func toggleButtons()
    
}

protocol ButtonsModuleOutput: class, ModuleOutput {

    func didSelectGreenButton()
    func didSelectRedButton()
    
}
