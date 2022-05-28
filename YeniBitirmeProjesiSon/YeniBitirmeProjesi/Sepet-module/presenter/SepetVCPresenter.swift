//
//  SepetVCPresenter.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 24.05.2022.
//

import Foundation

class SepetVCPresenter : ViewToPresenterSepetVCProtocol {
    func `sil`(sepet_yemek_id: Int, kullanici_adi: String) {
        sepetVCInteractor?.yemeksil(sepet_yemek_id: sepet_yemek_id, kullanici_adi: "Merve")
    }
    
    var sepetVCView: PresenterToViewSepetVCProtocol?
    
    var sepetVCInteractor: PresenterToInteractorSepetVCProtocol?
    
    func al(kullanici_adi: String) {
        sepetVCInteractor?.yemekAl(kullanici_adi: kullanici_adi)
        
    }
  
}

extension SepetVCPresenter : InteractorToPresenterSepetVCProtocol {
    func presenteraVeriGonder(yemeklerListesi: Array<SepettekiYemekler>) {
        sepetVCView?.vieweVeriGonder(yemeklerListesi: yemeklerListesi)
        
    
    }
}
