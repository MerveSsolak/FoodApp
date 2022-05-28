//
//  SepetTableViewCell.swift
//  YeniBitirmeProjesi
//
//  Created by Merve Solak on 24.05.2022.
//

import UIKit

class SepetTableViewCell: UITableViewCell {

    @IBOutlet weak var labelFiyat: UILabel!
    @IBOutlet weak var labelYemekAd: UILabel!
    @IBOutlet weak var sepetImage: UIImageView!
    @IBOutlet weak var labelYemekAdet: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
            
        
    }
    
}

