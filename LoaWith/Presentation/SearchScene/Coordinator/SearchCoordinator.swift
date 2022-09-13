//
//  SearchCoordinator.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import UIKit

protocol SearchCoordinator: Coordinator {
    
}

final class DefaultSearchCoordinator: SearchCoordinator {
    // MARK: - Constants
    
    // MARK: - Variables
    weak var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var searchViewController: SearchViewController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType = .search
    
    // MARK: - Init
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        let searchStoryboard = UIStoryboard(
            name: StoryboardNames.Search, bundle: nil
        )
        let searchViewController = searchStoryboard.instantiateViewController(
            withIdentifier: Identifiers.SearchViewController
        ) as! SearchViewController
        self.searchViewController = searchViewController
    }
    
    // MARK: - Functions
    func start() {
        self.searchViewController.viewModel = SearchViewModel(
            coordinator: self,
            searchUseCase: DefaultSearchUseCase(searchRepository: DefaultSearchRepository()))
        self.navigationController.pushViewController(searchViewController, animated: true)
    }
}

extension DefaultSearchCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinator: Coordinator) {
        //
    }
}
