//
//  HelloHelloRouter.swift
//  app
//
//  Created by Ideil on 29/11/2019.
//  Copyright © 2019 demo. All rights reserved.
//

import Foundation
import ViperArch

final class HelloRouter: HelloRouterInput {

    enum Segues: String {
        case buttonsEmbed = "ButtonsEmbedSegue"
    }
    
    weak var transitionHandler: ModuleTransitionHandler?
    var interactor: HelloInteractorInput?

}
