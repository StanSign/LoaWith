//
//  NotificationViewModel.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import Foundation

import RxSwift

final class NotificationViewModel {
    
    // MARK: - Constants
    private let notificationUseCase: NotificationUseCase
    private let disposeBag = DisposeBag()
    
    // MARK: - Variables
    weak var coordinator: NotificationCoordinator?
    
    // MARK: - Init
    init(coordinator: NotificationCoordinator, notificationUseCase: NotificationUseCase) {
        self.coordinator = coordinator
        self.notificationUseCase = notificationUseCase
    }
    
    // MARK: - Input
    struct Input {
        let viewDidLoadEvent: Observable<Void>
    }
    
    // MARK: - Output
    struct Output {
        
    }
    
    // MARK: - Transform
    func transform(from input: Input, disposeBag: DisposeBag) -> Output {
        let output = Output()
        
        input.viewDidLoadEvent
            .subscribe(onNext: {
                print("View Did Load")
            })
            .disposed(by: disposeBag)
        
        return output
    }
}
