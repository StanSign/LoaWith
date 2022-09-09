//
//  AppCoordinator.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/09.
//

import UIKit

protocol AppCoordinator: Coordinator {
    func showMainFlow()
}

final class DefaultAppCoordinator: AppCoordinator {
    var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var childCoordinators = [Coordinator]()
    var type: CoordinatorType { .app }
    
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        navigationController.setNavigationBarHidden(true, animated: true)
    }
    
    func start() {
        showMainFlow()
    }
    
    func showMainFlow() {
        
    }
}
