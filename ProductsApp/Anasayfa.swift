//
//  ViewController.swift
//  ProductsApp
//
//  Created by Emirhan on 9.10.2024.
//

import UIKit

class Anasayfa: UIViewController {
    
    @IBOutlet weak var urunlerTableView: UITableView!
    
    var urunlerListesi = [urunler]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urunlerTableView.delegate = self
        urunlerTableView.dataSource = self
        
        
        let u1 = urunler(ıd: 1 , ad: "Macbook Pro 14", resim : "bilgisayar",fiyat: 43000)
        let u2 = urunler(ıd: 2 , ad: "Rayban Club Master", resim : "gozluk",fiyat: 2500)
        let u3 = urunler(ıd: 3 , ad: "Sony ZX Series", resim : "kulaklik",fiyat: 40000)
        let u4 = urunler(ıd: 4 , ad: "Gio Armani", resim : "parfum",fiyat: 2000)
        let u5 = urunler(ıd: 5 , ad: "Casio X Series", resim : "saat",fiyat: 8000)
        let u6 = urunler(ıd: 6 , ad: "Dyson V8", resim : "supurge",fiyat: 18000)
        let u7 = urunler(ıd: 7 , ad: "IPhone 13", resim : "telefon",fiyat: 32000)
        urunlerListesi.append(u1)
        urunlerListesi.append(u2)
        urunlerListesi.append(u3)
        urunlerListesi.append(u4)
        urunlerListesi.append(u5)
        urunlerListesi.append(u6)
        urunlerListesi.append(u7)
        
        urunlerTableView.separatorColor = UIColor(white: 0.95, alpha: 1)
    }
}
    
    extension Anasayfa : UITableViewDelegate , UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return urunlerListesi.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let urun = urunlerListesi[indexPath.row]
            
            let hucre = tableView.dequeueReusableCell(withIdentifier: "urunlerHucre") as! UrunlerHucre
            
            hucre.ımageViewUrun.image = UIImage(named: urun.resim!)
            hucre.labelUrunad.text = urun.ad
            hucre.labelUrunfiyat.text = "\(urun.fiyat!) ₺"
            
            hucre.backgroundColor = UIColor(white: 0.95, alpha: 1)
            hucre.hucreArkaplan.layer.cornerRadius = 10.0
            
            
            
            return hucre
        }
    }




