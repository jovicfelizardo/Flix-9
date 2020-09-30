//
//  SuperheroDetailsViewController.swift
//  Flix
//
//  Created by David Abarca on 9/27/20.
//

import UIKit
import Alamofire

class SuperheroDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Then set the title of the movie
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        // and finally set the synopsis of the movie
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        // Do any additional setup after loading the view.
        // Then set the poster image of the movie
        let baseUrl = "https://image.tmdb.org/t/p/w500"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af.setImage(withURL: posterUrl!)
        
        // We want to set the backdrop of the movie
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af.setImage(withURL: backdropURL!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
