//
//  HomeCoordinator.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/09.
//

import UIKit

protocol HomeCoordinator: Coordinator {
    
}

final class DefaultHomeCoordinator: HomeCoordinator {
    var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var homeViewController: HomeViewController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType = .home

    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        self.homeViewController = homeViewController
    }

    func start() {
        
    }
}
