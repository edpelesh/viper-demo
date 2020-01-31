//
//  HelloHelloPresenter.swift
//  app
//
//  Created by Ideil on 29/11/2019.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit
import ViperArch

final class HelloPresenter: ModuleInput, HelloModuleInput, HelloViewOutput, HelloInteractorOutput, ButtonsModuleOutput {

    weak var view: HelloViewInput?
    var interactor: HelloInteractorInput?
    var router: HelloRouterInput?

    weak var buttonsModuleInput: ButtonsModuleInput?
    
    internal func viewIsReady() {
        view?.setupInitialState()
    }

    func set(moduleOutput: ModuleOutput) {
    }
    
    func prepare(for segue: UIStoryboardSegue) {
        guard let segueID = segue.identifier,
            let segueType = HelloRouter.Segues(rawValue: segueID) else { return }
        
        switch segueType {
        case .buttonsEmbed:
            segue.destination.moduleInput?.set(moduleOutput: self)
            buttonsModuleInput = segue.destination.moduleInput as? ButtonsModuleInput
        }
    }
    
    func didTapToggleButton() {
        buttonsModuleInput?.toggleButtons()
    }
    
    // MARK: ButtonsModuleOutput
    
    func didSelectGreenButton() {
        view?.toggleBackground(isRed: false)
    }
    
    func didSelectRedButton() {
        view?.toggleBackground(isRed: true)
    }
    
}
