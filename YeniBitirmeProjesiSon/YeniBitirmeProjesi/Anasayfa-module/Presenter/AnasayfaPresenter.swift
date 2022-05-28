//
//  AnasayfaPresenter.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 21.05.2022.
//

import Foundation
class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func tumYemekleriAl() {
        anasayfaInteractor?.yemekleriAl()
    }
    
    
}
extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yemeklerListesi: Array<Yemekler>) {
        anasayfaView?.vieweVeriGonder(yemeklerListesi: yemeklerListesi)
    }
}
