//
//  DetayVC.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 22.05.2022.
//

import UIKit
import Kingfisher


class DetayVC: UIViewController {
    @IBOutlet weak var yemekImage: UIImageView!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelYemekAd: UILabel!
    @IBOutlet weak var labelStepper: UILabel!
    
    
    @IBOutlet weak var labelYemekFiyat: UILabel!
    
    var yemek:Yemekler?
    var detayVCPresenterNesnesi:ViewToPresenterDetayVCProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        stepper.minimumValue = 1
       
        if let y = yemek {
            
            labelYemekAd.text = y.yemek_adi
            labelYemekFiyat.text = y.yemek_fiyat! + " ₺"
            
            
            
            
            let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/" + (y.yemek_resim_adi!))
            
            yemekImage.kf.setImage(with: url)
            
        
        
        }
        
        labelStepper.text = String(Int(stepper.value))
        
        DetayVCRouter.createModule(ref: self)

    }
    

    
    
    
    @IBAction func StepperDegisimKontrol(_ sender: UIStepper) {
        labelStepper.text = String(sender.value) 
        labelStepper.text = String(Int(sender.value))
        labelYemekFiyat.text = String(Int((yemek?.yemek_fiyat)!)! * Int (sender.value)) + " ₺"
      //  labelYemekFiyat.text = "\(Int(yemek.yemek_fiyat!)! * Int(labelStepper!.text))
     //   labelYemekFiyat.text = "\(Int(yemek.yemek_siparis_adet!)! * Int(yemek?!.yemek_fiyat!)!)" + " ₺"
    
    }
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        if let ya = yemek?.yemek_adi ,let yf = yemek?.yemek_fiyat, let yr = yemek?.yemek_resim_adi,let yt = labelStepper.text {
            detayVCPresenterNesnesi?.ekle(yemek_adi: ya, yemek_resim_adi: yr, yemek_fiyat: Int(yf)!, yemek_siparis_adet: Int(yt)!, kullanici_adi: "Merve")
            
    }
    

}

}

        

    
