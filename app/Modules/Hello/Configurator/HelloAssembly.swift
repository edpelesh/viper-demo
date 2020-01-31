//
//  HelloHelloAssembly.swift
//  app
//
//  Created by Ideil on 29/11/2019.
//  Copyright © 2019 demo. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

final class HelloAssembly: Assembly {

    func assemble(container: Container) {

        container.storyboardInitCompleted(HelloViewController.self) { (r, view) in
            view.output = r.resolve(HelloPresenter.self, argument: view)
        }

        container.register(HelloViewController.self) { r in
            let view = HelloViewController()
            view.output = r.resolve(HelloPresenter.self, argument: view)
            return view
        }

        container.register(HelloPresenter.self) { (r, view: HelloViewController) in
            let presenter = HelloPresenter()
            let interactor = r.resolve(HelloInteractor.self, argument: presenter)!
            let router = r.resolve(HelloRouter.self, arguments: view, interactor)!
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
            return presenter
        }

        container.register(HelloInteractor.self) { (r, presenter: HelloPresenter) in
            let interactor = HelloInteractor()
            interactor.output = presenter
            return interactor
        }

        container.register(HelloRouter.self) { (r, view: HelloViewController, interactor: HelloInteractor) in
            let router = HelloRouter()
            router.interactor = interactor
            router.transitionHandler = view
            return router
        }

    }

}
