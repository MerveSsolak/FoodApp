//
//  AnasayfaRouter.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 21.05.2022.
//

import Foundation
class AnasayfaRouter {
    static func createModule(ref: AnasayfaVC) {
        let presenter = AnasayfaPresenter()
        
        //View
        ref.anasayfaPresenterNesnesi = presenter
        
        //Presenter
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor = AnasayfaInteractor()
        ref.anasayfaPresenterNesnesi?.anasayfaView = ref
        
        //Interactor
        ref.anasayfaPresenterNesnesi?.anasayfaInteractor?.anasayfaPresenter = presenter
    }
}
