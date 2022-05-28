//
//  SepetVCProtocols.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 24.05.2022.
//

import Foundation

protocol ViewToPresenterSepetVCProtocol {
    var sepetVCInteractor:PresenterToInteractorSepetVCProtocol? {get set}

    var sepetVCView:PresenterToViewSepetVCProtocol? {get set}
    
    func
    al(kullanici_adi:String)
    func sil(sepet_yemek_id:Int,kullanici_adi:String)
}


protocol PresenterToInteractorSepetVCProtocol {
    var sepetVCPresenter:InteractorToPresenterSepetVCProtocol? {get set}
    func
    yemekAl(kullanici_adi:String)
    
    func yemeksil(sepet_yemek_id:Int,kullanici_adi:String)
}
protocol InteractorToPresenterSepetVCProtocol {
    func presenteraVeriGonder(yemeklerListesi:Array<SepettekiYemekler>)
    
}

protocol PresenterToViewSepetVCProtocol {
    func vieweVeriGonder(yemeklerListesi:Array<SepettekiYemekler>)
}

protocol PresenterToRouterSepetVCProtocol {
    static func createModule(ref:SepetVC)
}
