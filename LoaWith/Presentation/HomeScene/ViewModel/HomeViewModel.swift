//
//  HomeViewModel.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/09.
//

import Foundation

import RxSwift

final class HomeViewModel {
    
    // MARK: - Constants
    private let homeUseCase: HomeUseCase
    private let disposeBag = DisposeBag()
    
    // MARK: - Variables
    weak var coordinator: HomeCoordinator?
    
    // MARK: - Init
    init(coordinator: HomeCoordinator, homeUseCase: HomeUseCase) {
        self.coordinator = coordinator
        self.homeUseCase = homeUseCase
    }
}
