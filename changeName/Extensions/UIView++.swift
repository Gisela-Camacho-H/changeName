//
//  UIView++.swift
//  changeName
//
//  Created by Gisela Camacho on 23/06/23.
//

import UIKit

extension UIView{
    //MARK: - Finder labels
    class Labels: UILabel {
        override init(frame: CGRect){
            super.init(frame: frame)
            translatesAutoresizingMaskIntoConstraints = false
            font = .boldSystemFont(ofSize: 18)
            textAlignment = .center

        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
