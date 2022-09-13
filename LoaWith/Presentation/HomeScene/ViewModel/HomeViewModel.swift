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
    
    // MARK: - Input
    struct Input {
        let viewDidLoadEvent: Observable<Void>
        let searchButtonDidTapEvent: Observable<Void>
        let notiButtonDidTapEvent: Observable<Void>
        let menuButtonDidTapEvent: Observable<Void>
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
        
        input.searchButtonDidTapEvent
            .subscribe(onNext: {
                print("Search Button Tapped")
            })
            .disposed(by: disposeBag)
        
        input.notiButtonDidTapEvent
            .subscribe(onNext: {
                print("Notification Button Tapped")
            })
            .disposed(by: disposeBag)
        
        input.menuButtonDidTapEvent
            .subscribe(onNext: {
                print("Menu Button Tapped")
            })
            .disposed(by: disposeBag)
        
        return output
    }
}
