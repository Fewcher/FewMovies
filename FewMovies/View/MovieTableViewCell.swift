//
//  MovieTableViewCell.swift
//  FewMovies
//
//  Created by Fewcher on 08.06.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    var itemLandingPad: Movie? {
        didSet{
            updateViews()
        }
    }
    
    func updateViews() {
        guard let unwrappedItem = itemLandingPad else {return}
        movieTitle.text = unwrappedItem.title
        movieRating.text = "\(unwrappedItem.rating)"
        movieBody.text = unwrappedItem.overview
        
    }
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieBody: UILabel!
}
