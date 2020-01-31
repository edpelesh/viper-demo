//
//  ButtonsButtonsAssembly.swift
//  app
//
//  Created by Ideil on 01/02/2020.
//  Copyright © 2020 Demo. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

final class ButtonsAssembly: Assembly {

    func assemble(container: Container) {

        container.storyboardInitCompleted(ButtonsViewController.self) { (r, view) in
            view.output = r.resolve(ButtonsPresenter.self, argument: view)
        }

        container.register(ButtonsViewController.self) { r in
            let view = ButtonsViewController()
            view.output = r.resolve(ButtonsPresenter.self, argument: view)
            return view
        }

        container.register(ButtonsPresenter.self) { (r, view: ButtonsViewController) in
            let presenter = ButtonsPresenter()
            let interactor = r.resolve(ButtonsInteractor.self, argument: presenter)!
            let router = r.resolve(ButtonsRouter.self, arguments: view, interactor)!
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
            return presenter
        }

        container.register(ButtonsInteractor.self) { (r, presenter: ButtonsPresenter) in
            let interactor = ButtonsInteractor()
            interactor.output = presenter
            return interactor
        }

        container.register(ButtonsRouter.self) { (r, view: ButtonsViewController, interactor: ButtonsInteractor) in
            let router = ButtonsRouter()
            router.interactor = interactor
            router.transitionHandler = view
            return router
        }

    }

}
