//
//  XibUIView.swift
//  LoaWith
//
//  Created by 이창준 on 2022/09/11.
//

import UIKit

class XibUIView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureUI()
    }
    
    private func configureUI() {
        let className = String(describing: type(of: self))
        guard let view = self.loadViewFromNib(nibName: className) else { return }
        
        view.frame = self.bounds
        self.addSubview(view)
    }
}
