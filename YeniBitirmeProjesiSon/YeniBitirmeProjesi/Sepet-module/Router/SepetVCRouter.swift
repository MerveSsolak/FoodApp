//
//  SepetVCRouter.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 24.05.2022.
//

import Foundation

class SepetVCRouter : PresenterToRouterSepetVCProtocol {
    static func createModule(ref: SepetVC) {
        let presenter = SepetVCPresenter()
        //View
        ref.sepetVCPresenterNesnesi = presenter
        
        //Presenter
        ref.sepetVCPresenterNesnesi?.sepetVCInteractor = SepetVCInteractor()
        ref.sepetVCPresenterNesnesi?.sepetVCView = ref
        
        //Interactor
        ref.sepetVCPresenterNesnesi?.sepetVCInteractor?.sepetVCPresenter = presenter
        
    }
    }

