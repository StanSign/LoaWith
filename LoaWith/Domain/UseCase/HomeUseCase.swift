//
//  HomeUseCase.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/09.
//

import Foundation

import RxSwift

protocol HomeUseCase {
    
}

final class DefaultHomeUseCase: HomeUseCase {
    
    // MARK: - Constants
    private let disposeBag: DisposeBag
    
    // MARK: - Init
    init() {
        self.disposeBag = DisposeBag()
    }
}
