//
//  MovieCell.swift
//  Movielist
//
//  Created by Olaf Kroon on 16/11/16.
//  Copyright © 2016 Olaf Kroon. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var imdbRating: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
