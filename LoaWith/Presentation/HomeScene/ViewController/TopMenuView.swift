//
//  TopMenuView.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/11.
//

import UIKit

import SnapKit

class TopMenuView: XibUIView {
    // MARK: - Constants
    
    // MARK: - IBOutlets
    @IBOutlet weak var stackView: UIStackView!
    
    lazy var menuButton: UIImageView = {
        let menuButton = UIImageView()
        return menuButton
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureUI()
    }
}

// MARK: - Private Functions
private extension TopMenuView {
    func configureUI() {
        
    }
}
