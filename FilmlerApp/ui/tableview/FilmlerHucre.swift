//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by Fatih Gümüş on 4.01.2024.
//

import UIKit

protocol HucreProtokol{
    func sepeteEkleTiklandi(indexPath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var filmFiyat: UILabel!
    
    var hucreProtokol : HucreProtokol?
    var indexPath : IndexPath?
    
    
    @IBAction func sepeteEkle(_ sender: Any) {
        print("Sepete Eklendi")
        hucreProtokol?.sepeteEkleTiklandi(indexPath: indexPath!)
        
    }
}
