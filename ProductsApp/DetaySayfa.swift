//
//  DetaySayfa.swift
//  ProductsApp
//
//  Created by Emirhan on 9.10.2024.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var labelUrunFiyat: UILabel!
    @IBOutlet weak var ımageViewUrun: UIImageView!
    
    var urun: urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let u = urun {
            self .navigationItem.title = u.ad
            ımageViewUrun.image = UIImage(named: u.resim!)
            labelUrunFiyat.text = "\(u.fiyat!) t"
            
        }
        
    }
   
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        if let u = urun {
            
            print("Detay Sayfa : \(u.ad!) sepete eklendi.")
        }
            
        
    }
    
}
