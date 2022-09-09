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
    // MARK: - Constants
    
    // MARK: - Variables
    weak var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var homeViewController: HomeViewController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType = .home

    // MARK: - Init
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        let homeStoryboard = UIStoryboard(
            name: StoryboardNames.Home, bundle: nil
        )
        let homeViewController = homeStoryboard.instantiateViewController(
            withIdentifier: Identifiers.HomeViewController
        ) as! HomeViewController
        self.homeViewController = homeViewController
    }

    // MARK: - Functions
    func start() {
        self.homeViewController.viewModel = HomeViewModel(
            coordinator: self,
            homeUseCase: DefaultHomeUseCase()
        )
        self.navigationController.pushViewController(
            self.homeViewController, animated: true
        )
    }
}
