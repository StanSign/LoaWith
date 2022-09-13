//
//  NotificationCoordinator.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import UIKit

protocol NotificationCoordinator: Coordinator {
    
}

final class DefaultNotificationCoordinator: NotificationCoordinator {
    // MARK: - Constants
    
    // MARK: - Variables
    weak var finishDelegate: CoordinatorFinishDelegate?
    var navigationController: UINavigationController
    var notificationViewController: NotificationViewController
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType = .notification

    // MARK: - Init
    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        let notificationStoryboard = UIStoryboard(
            name: StoryboardNames.Notification, bundle: nil
        )
        let notificationViewController = notificationStoryboard.instantiateViewController(
            withIdentifier: Identifiers.NotifiationViewController
        ) as! NotificationViewController
        self.notificationViewController = notificationViewController
    }

    // MARK: - Functions
    func start() {
        self.notificationViewController.viewModel = NotificationViewModel(
            coordinator: self,
            notificationUseCase: DefaultNotificationUseCase()
        )
        self.navigationController.pushViewController(
            self.notificationViewController, animated: true
        )
    }
    
}
