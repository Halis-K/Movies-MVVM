//
//  HomeViewModel.swift
//  Movies-MVVM
//
//  Created by Halis Kayar on 12.01.2023.
//

import Foundation

protocol HomeViewModelInterface {
    var view: HomeScreenInterface? { get set }
    
    func viewDidLoad()
    func getMovies()
}

// Properties
final class HomeViewModel {
    weak var view: HomeScreenInterface?
    private let service = MovieService()
    var movies: [MovieResult] = []
    private var page: Int = 1
//    var shouldDownloadMore: Bool = true
}

extension HomeViewModel: HomeViewModelInterface {
    func viewDidLoad() {
        view?.configureVC()
        view?.configureCollectionView()
        getMovies()
    }
    
    func getMovies() {
//        shouldDownloadMore = false
        service.downloadMovies(page: page) { [weak self] returnedMovies in
            guard let self = self else { return }
            guard let returnedMovies = returnedMovies else { return }
            
            self.movies.append(contentsOf: returnedMovies)
            self.page += 1
            self.view?.reloadCollectionView()
//            shouldDownloadMore = true
        }
    }
    
    func getDetail(id: Int) {
        service.downloadDetail(id: id) { [weak self] returnedDetail in
            guard let self = self else { return }
            guard let returnedDetail = returnedDetail else { return }
            
            self.view?.navigateToDetailScreen(movie: returnedDetail)
        }
    }
}
