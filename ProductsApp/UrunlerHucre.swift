//
//  UrunlerHucre.swift
//  ProductsApp
//
//  Created by Emirhan on 9.10.2024.
//

import UIKit

class UrunlerHucre: UITableViewCell {

    @IBOutlet weak var labelUrunfiyat: UILabel!
    @IBOutlet weak var labelUrunad: UILabel!
    @IBOutlet weak var ımageViewUrun: UIImageView!
    @IBOutlet weak var hucreArkaplan: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonSepeteEkle(_ sender: Any) {
    }
}
