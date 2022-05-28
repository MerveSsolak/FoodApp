//
//  DetayVCRouter.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 22.05.2022.
//

import Foundation

class DetayVCRouter : PresenterToRouterDetayVCProtocol {
    static func createModule(ref: DetayVC) {
        let presenter = DetayVCPresenter()
        
        //View
        ref.detayVCPresenterNesnesi = presenter
        
        //Presenter
        ref.detayVCPresenterNesnesi?.detayVCInteractor = DetayVCInteractor()
       
       
    
    }
}
