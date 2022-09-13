//
//  NotificationUseCase.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import Foundation

import RxSwift

protocol NotificationUseCase {
    
}

final class DefaultNotificationUseCase: NotificationUseCase {
    
    // MARK: - Constants
    private let disposeBag: DisposeBag
    
    // MARK: - Init
    init() {
        self.disposeBag = DisposeBag()
    }
}
