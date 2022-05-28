//
//  DetayVCProtocols.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 22.05.2022.
//

import Foundation

protocol ViewToPresenterDetayVCProtocol {
    var detayVCInteractor:PresenterToInteractorDetayVCProtocol? {get set}
    
    func ekle(yemek_adi:String,yemek_resim_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int,kullanici_adi:String)
}

protocol PresenterToInteractorDetayVCProtocol {
    func sepeteEkle(yemek_adi:String,yemek_resim_adi:String,yemek_fiyat:Int,yemek_siparis_adet:Int,kullanici_adi:String)
}

protocol PresenterToRouterDetayVCProtocol {
    static func createModule(ref:DetayVC)
}
