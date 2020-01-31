//
//  ButtonsButtonsPresenter.swift
//  app
//
//  Created by Ideil on 01/02/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit
import ViperArch

final class ButtonsPresenter: ModuleInput, ButtonsModuleInput, ButtonsViewOutput, ButtonsInteractorOutput {

    weak var view: ButtonsViewInput?
    var interactor: ButtonsInteractorInput?
    var router: ButtonsRouterInput?
    
    weak var output: ButtonsModuleOutput?
    
    internal func viewIsReady() {
        view?.setupInitialState()
    }

    func set(moduleOutput: ModuleOutput) {
        output = moduleOutput as? ButtonsModuleOutput
    }
    
    func toggleButtons() {
        if view?.segmentedControl?.selectedSegmentIndex == 0 {
            view?.segmentedControl?.selectedSegmentIndex = 1
        } else {
            view?.segmentedControl?.selectedSegmentIndex = 0
        }
        
        didChangeSegment()
    }
    
    func didChangeSegment() {
        if view?.segmentedControl?.selectedSegmentIndex == 0 {
            output?.didSelectGreenButton()
        } else {
            output?.didSelectRedButton()
        }
    }
    
}
