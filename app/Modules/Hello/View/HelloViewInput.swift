//
//  HelloHelloViewInput.swift
//  app
//
//  Created by Ideil on 29/11/2019.
//  Copyright © 2019 demo. All rights reserved.
//

import Foundation
import ViperArch

protocol HelloViewInput: ModuleTransitionHandler {

    func setupInitialState()
    func toggleBackground(isRed: Bool)

}
