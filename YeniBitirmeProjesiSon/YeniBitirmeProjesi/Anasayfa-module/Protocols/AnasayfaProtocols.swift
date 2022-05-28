//
//  AnasayfaProtocols.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 21.05.2022.
//

import Foundation
protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func tumYemekleriAl()
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func yemekleriAl()
}
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(yemeklerListesi:Array<Yemekler>)
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(yemeklerListesi:Array<Yemekler>)
}


protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
