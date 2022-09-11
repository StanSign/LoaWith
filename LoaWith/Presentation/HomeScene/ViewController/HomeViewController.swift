//
//  HomeViewController.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/09.
//

import UIKit

import RxSwift

import SnapKit

final class HomeViewController: UIViewController {

    // MARK: - Constants
    
    // MARK: - Variables
    var viewModel: HomeViewModel?
    var disposeBag = DisposeBag()
    
    // MARK: - IBOutlets
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        bindViewModel()
    }
    
    // MARK: - Binding View Model
    private func bindViewModel() {
        
    }
    
    // MARK: - ConfigureUI Function
    private func configureUI() {
        
    }
}

// MARK: - UI Configurations
extension HomeViewController {
    
}
