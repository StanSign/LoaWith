//
//  DefaultSearchRepository.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/13.
//

import Foundation

import RxSwift

final class DefaultSearchRepository: SearchRepository {
    
    // MARK: - Constants
    private let disposeBag: DisposeBag
    
    // MARK: - Init
    init() {
        self.disposeBag = DisposeBag()
    }
    
    // MARK: - Functions
    
}
