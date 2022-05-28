//
//  DetayVCPresenter.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 22.05.2022.
//

import Foundation

class DetayVCPresenter : ViewToPresenterDetayVCProtocol{
    var detayVCInteractor: PresenterToInteractorDetayVCProtocol?
    
    func ekle(yemek_adi: String, yemek_resim_adi: String, yemek_fiyat: Int, yemek_siparis_adet: Int, kullanici_adi: String) {
        detayVCInteractor?.sepeteEkle(yemek_adi: yemek_adi, yemek_resim_adi: yemek_resim_adi, yemek_fiyat: yemek_fiyat, yemek_siparis_adet: yemek_siparis_adet, kullanici_adi: kullanici_adi)
    }
    
}
