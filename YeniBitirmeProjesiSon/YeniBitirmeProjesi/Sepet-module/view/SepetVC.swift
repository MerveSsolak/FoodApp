//
//  SepetVC.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 22.05.2022.
//

import UIKit
import Kingfisher

class SepetVC: UIViewController {
    @IBOutlet weak var sepetTableViewCell: UITableView!
    
    var yemeklerListe = [SepettekiYemekler]()
    
    var sepetVCPresenterNesnesi:ViewToPresenterSepetVCProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sepetTableViewCell.delegate = self
        sepetTableViewCell.dataSource = self
        SepetVCRouter.createModule(ref: self)
        sepetVCPresenterNesnesi?.al(kullanici_adi: "Merve")
        
        sepetTableViewCell.separatorColor = UIColor(white: 0.95, alpha: 1)
        
        
    }
 
    @IBAction func buttonSepetOnayla(_ sender: Any) {
    
    }
   
}

extension SepetVC : PresenterToViewSepetVCProtocol {
    
func vieweVeriGonder(yemeklerListesi: Array<SepettekiYemekler>) {
    self.yemeklerListe = yemeklerListesi
    DispatchQueue.main.async {
        self.sepetTableViewCell.reloadData()
    }
}
}
    
extension SepetVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(yemeklerListe.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let yemek = yemeklerListe[indexPath.row]
        
        //As olarak nerede olduğunu söylemem gerekiyor.
        let hucre = tableView.dequeueReusableCell(withIdentifier: "sepetHucre", for: indexPath) as! SepetTableViewCell
        hucre.sepetImage.image = UIImage(named: yemek.yemek_resim_adi!)
        hucre.labelYemekAd.text = yemek.yemek_adi
    
        hucre.labelFiyat.text = "\(Int(yemek.yemek_siparis_adet!)! * Int(yemek.yemek_fiyat!)!)" + " ₺"
        hucre.labelYemekAdet.text = "\(yemek.yemek_siparis_adet!)" 
        
        
        let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/" + (yemeklerListe[indexPath.row].yemek_resim_adi!))
        
        hucre.sepetImage.kf.setImage(with: url)
        
        return hucre
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        

        let silAction = UIContextualAction(style: .destructive, title: "Sil"){(action,view,void ) in
            let yemek = self.yemeklerListe[indexPath.row]
            let alert = UIAlertController(title: "Silme İşlemi", message: "\(yemek.yemek_adi!) silinsin mi?", preferredStyle: .alert)
            
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel){ action in }
                alert.addAction(iptalAction)
            let evetAction = UIAlertAction(title: "Evet", style: .destructive){ action in
                
                self.sepetVCPresenterNesnesi?.sil(sepet_yemek_id: Int(yemek.sepet_yemek_id!)!,kullanici_adi: "Merve")
           
        }
        alert.addAction(evetAction)
        self.present(alert , animated: true)
    }
    
    return UISwipeActionsConfiguration(actions: [silAction])
}

}

