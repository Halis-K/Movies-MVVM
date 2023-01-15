//
//  DetailViewModel.swift
//  Movies-MVVM
//
//  Created by Halis Kayar on 14.01.2023.
//

import Foundation

protocol DetailViewModelInterface {
    var view: DetailScreenInterface? { get set }
    func viewDidLoad()
}

final class DetailViewModel {
    weak var view: DetailScreenInterface?
    
    
}

extension DetailViewModel: DetailViewModelInterface {
    func viewDidLoad() {
        view?.configureVC()
        view?.configureCollectionView()
        view?.downloadPosterImage()
        view?.configureTitleLabel()
        view?.configureDateLabel()
        view?.configureOverviewLabel()
    }
    
}
