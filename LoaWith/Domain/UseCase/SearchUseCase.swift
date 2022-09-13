//
//  SearchUseCase.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import Foundation

import RxSwift

protocol SearchUseCase {
    
}

final class DefaultSearchUseCase: SearchUseCase {
    
    // MARK: - Constants
    private let searchRepository: SearchRepository
    private let disposeBag: DisposeBag
    
    // MARK: - Init
    init(searchRepository: SearchRepository) {
        self.searchRepository = searchRepository
        self.disposeBag = DisposeBag()
    }
}
