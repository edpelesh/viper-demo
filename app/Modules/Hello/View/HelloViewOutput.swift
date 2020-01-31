//
//  HelloHelloViewOutput.swift
//  app
//
//  Created by Ideil on 29/11/2019.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit
import ViperArch

protocol HelloViewOutput: ModuleInput, HelloModuleInput {

    func viewIsReady()
    func prepare(for segue: UIStoryboardSegue)
    func didTapToggleButton()

}
