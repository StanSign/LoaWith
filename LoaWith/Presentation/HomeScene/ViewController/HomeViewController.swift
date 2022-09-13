//
//  HomeViewController.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/09.
//

import UIKit

import RxSwift
import RxCocoa

import SnapKit

final class HomeViewController: UIViewController {

    // MARK: - Constants
    let systemMenuIcon = "line.3.horizontal"
    let systemNotiIcon = "bell.fill"
    let systemSearchIcon = "magnifyingglass"
    
    // MARK: - Variables
    var viewModel: HomeViewModel?
    var disposeBag = DisposeBag()
    
    // MARK: - IBOutlets
    @IBOutlet weak var topMenuView: TopMenuView!
    
    lazy var searchButton = UIButton().then {
        let searchImage = UIImage(systemName: systemSearchIcon)
        $0.setImage(searchImage, for: .normal)
        $0.tintColor = .black
    }
    
    lazy var notiButton = UIButton().then {
        let notiImage = UIImage(systemName: systemNotiIcon)
        $0.setImage(notiImage, for: .normal)
        $0.tintColor = .black
    }
    
    lazy var menuButton = UIButton().then {
        let menuImage = UIImage(systemName: systemMenuIcon)
        $0.setImage(menuImage, for: .normal)
        $0.tintColor = .black
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        bindViewModel()
    }
    
    // MARK: - Binding View Model
    private func bindViewModel() {
        let input = HomeViewModel.Input(
            viewDidLoadEvent: Observable.just(()).asObservable(),
            searchButtonDidTapEvent: self.searchButton.rx.tap.asObservable(),
            notiButtonDidTapEvent: self.notiButton.rx.tap.asObservable(),
            menuButtonDidTapEvent: self.menuButton.rx.tap.asObservable()
        )
        
        guard let output = self.viewModel?.transform(
            from: input,
            disposeBag: self.disposeBag
        ) else { return }
    }
    
    // MARK: - ConfigureUI Function
    private func configureUI() {
        configureTopMenu()
    }
}

// MARK: - UI Configurations
private extension HomeViewController {
    func configureTopMenu() {
        topMenuView.stackView.addArrangedSubview(self.searchButton)
        topMenuView.stackView.addArrangedSubview(self.notiButton)
        topMenuView.stackView.addArrangedSubview(self.menuButton)
    }
}
