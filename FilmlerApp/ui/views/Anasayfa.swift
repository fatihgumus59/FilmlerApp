//
//  ViewController.swift
//  FilmlerApp
//
//  Created by Fatih Gümüş on 4.01.2024.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var filmlerCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmlerCollectionView.dataSource = self
        filmlerCollectionView.delegate = self
        
        
        let f1 = Filmler(Id: 1, resim: "django", ad: "Django", fiyat: 24)
        let f2 = Filmler(Id: 2, resim: "interstellar", ad: "İnterstellar", fiyat: 32)
        let f3 = Filmler(Id: 3, resim: "inception", ad: "Inception", fiyat: 16)
        let f4 = Filmler(Id: 4, resim: "thehatefuleight", ad: "The Hateful Eight", fiyat: 28)
        let f5 = Filmler(Id: 5, resim: "thepianist", ad: "The Pianist", fiyat: 18)
        let f6 = Filmler(Id: 6, resim: "anadoluda", ad: "Anadoluda", fiyat: 10)
        
        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        // 10 x 10 x 10 = 30  -> boşluk hesaplaması
        let ekranGenislik = UIScreen.main.bounds.width // ekran genişliğini aldık.
        let ItemGenislik = (ekranGenislik - 30) / 2 // -> ekran genişliğinden boşlukları çıkardık - 2ye bölme sebebi yan yana 2 tane olması
        
        tasarim.itemSize = CGSize(width: ItemGenislik, height: ItemGenislik*1.8)
        
        filmlerCollectionView.collectionViewLayout = tasarim
        
    }


}
extension Anasayfa : UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let film = filmlerListesi[indexPath.row]
        
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "filmlerHucre", for: indexPath) as! FilmlerHucre
        
        hucre.filmFiyat.text = "\(film.fiyat!) ₺"
        hucre.filmImage.image = UIImage(named: film.resim!)
        
        
        hucre.layer.borderColor = UIColor.lightGray.cgColor
        hucre.layer.borderWidth = 0.3
        hucre.layer.cornerRadius = 10

        
        return hucre
    }
}
