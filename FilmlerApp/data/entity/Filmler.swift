//
//  Filmler.swift
//  FilmlerApp
//
//  Created by Fatih Gümüş on 4.01.2024.
//

import Foundation

class Filmler{
    var Id:Int?
    var resim:String?
    var ad:String?
    var fiyat:Int?
    
    init(){
        
    }
    
    init(Id: Int?, resim: String?, ad: String?, fiyat: Int?) {
        self.Id = Id
        self.resim = resim
        self.ad = ad
        self.fiyat = fiyat
    }
    
    
    
}
