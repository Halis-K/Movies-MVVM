//
//  UICollectionView+Ext.swift
//  Movies-MVVM
//
//  Created by Halis Kayar on 14.01.2023.
//

import UIKit

extension UICollectionView {
    func reloadOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
