//
//  DetailScreen.swift
//  Movies-MVVM
//
//  Created by Halis Kayar on 14.01.2023.
//

import UIKit

class DetailScreen: UIViewController {

    var movie: MovieResult
    
    init(movie: MovieResult) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemOrange
    }
    

}
