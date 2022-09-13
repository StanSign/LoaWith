//
//  SearchViewModel.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import Foundation

import RxSwift

final class SearchViewModel {
    
    // MARK: - Constants
    private let searchUseCase: SearchUseCase
    private let disposeBag = DisposeBag()
    
    // MARK: - Variables
    weak var coordinator: SearchCoordinator?
    
    // MARK: - Init
    init(coordinator: SearchCoordinator, searchUseCase: SearchUseCase) {
        self.coordinator = coordinator
        self.searchUseCase = searchUseCase
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
