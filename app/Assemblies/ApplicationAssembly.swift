//
//  ApplicationAssembly.swift
//  app
//
//  Created by Eduard Pelesh on 29.11.2019.
//  Copyright © 2019 demo. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

fileprivate var assembler: Assembler!

extension SwinjectStoryboard {
    
    @objc
    class func setup() {
        Container.loggingFunction = nil
        
        assembler = Assembler([
            NetworkAssembly(),
            
            HelloAssembly(),
            ButtonsAssembly(),

        ], container: defaultContainer)
    }
    
}

