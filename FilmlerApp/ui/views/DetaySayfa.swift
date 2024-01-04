//
//  DetaySayfa.swift
//  FilmlerApp
//
//  Created by Fatih Gümüş on 4.01.2024.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var labelAd: UILabel!
    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var film : Filmler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let f = film{
            labelAd.text = f.ad!
            labelFiyat.text = "\(f.fiyat!) ₺"
            filmImage.image = UIImage(named: f.resim!)
        }
    }
    

}
