//
//  MovieViewModel.swift
//  res API
//
//  Created by Byron on 2/22/21.
//

import Foundation

class MovieViewModel {
    private var apiServices = ApiServices()
    private var popularMovies = [Movie]()
    
    func fetchPopularMoviesData(completion: @escaping () -> ()){
        apiServices.getPopularMoviesData{ [weak self] (result) in
            
            switch result {
            case .success(let listOf):
                self?.popularMovies = listOf.Movies
                completion()
            case .failure(let error):
                print("Error prossescion json data: \(error)")
            
            
            }
        }
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        if popularMovies.count != 0 {
            return popularMovies.count
        }
        return 0
    }
    
    func cellForRowAt(indexPath: IndexPath) -> Movie {
        return popularMovies[indexPath.row]
    }
}
