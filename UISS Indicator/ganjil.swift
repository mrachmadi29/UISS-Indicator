//
//  ganjil.swift
//  UISS Indicator
//
//  Created by M.Rachmadi on 30/08/21.
//

import UIKit

class ganjil: UIViewController {
    
    var tumor1:Int = 0
    var extend:Int = 0
    var adrenal:Int = 0
    var venacava:Int = 0
    var gerota:Int = 0
    var noduslimfe:Int = 0
    var metastasis:Int = 0
    var fuhrman:Int = 1
    var ecog:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("tumor" ,tumor1)
        print("extend" ,extend)
        print("adrenal" ,adrenal)
        print("venacava" ,venacava)
        print("gerota" ,gerota)
        print("noduslimfe" ,noduslimfe)
        print("metastasis" ,metastasis)
        print("fuhrman" ,fuhrman)
        print("ecog" ,ecog)
    }
    @IBAction func yatumor(_ sender: Any) {
        self.tumor1 = 1
        performSegue(withIdentifier: "extend", sender: self)
    }
    @IBAction func tidaktumor(_ sender: Any) {
        self.tumor1 = 0
        performSegue(withIdentifier: "extend", sender: self)
    }
    @IBAction func yalelah(_ sender: Any) {
        self.adrenal = 1
        performSegue(withIdentifier: "venacava", sender: self)
    }
    @IBAction func tidaklelah(_ sender: Any) {
        self.adrenal = 0
        performSegue(withIdentifier: "venacava", sender: self)
    }
    @IBAction func yagerota(_ sender: Any) {
        self.gerota = 1
        performSegue(withIdentifier: "noduslimfe", sender: self)
    }
    @IBAction func tidakgerota(_ sender: Any) {
        self.gerota = 0
        performSegue(withIdentifier: "noduslimfe", sender: self)
    }
    @IBAction func yametastasis(_ sender: Any) {
        self.metastasis = 1
        performSegue(withIdentifier: "fuhrman", sender: self)
    }
    @IBAction func tidakmetastasis(_ sender: Any) {
        self.metastasis = 0
        performSegue(withIdentifier: "fuhrman", sender: self)
    }
    @IBAction func satuecog(_ sender: Any) {
        self.ecog = 0
        performSegue(withIdentifier: "hasil", sender: self)
    }
    @IBAction func duaecog(_ sender: Any) {
        self.ecog = 1
        performSegue(withIdentifier: "hasil", sender: self)
    }
    @IBAction func tigaecog(_ sender: Any) {
        self.ecog = 2
        performSegue(withIdentifier: "hasil", sender: self)
    }
    @IBAction func empatecog(_ sender: Any) {
        self.ecog = 3
        performSegue(withIdentifier: "hasil", sender: self)
    }
    @IBAction func limaecog(_ sender: Any) {
        self.ecog = 4
        performSegue(withIdentifier: "hasil", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as? genap
        next?.tumor1 = tumor1
        next?.extend = extend
        next?.adrenal = adrenal
        next?.venacava = venacava
        next?.gerota = gerota
        next?.noduslimfe = noduslimfe
        next?.metastasis = metastasis
        next?.fuhrman = fuhrman
        next?.ecog = ecog
        let akhir = segue.destination as? hasil
        akhir?.tumor1 = tumor1
        akhir?.extend = extend
        akhir?.adrenal = adrenal
        akhir?.venacava = venacava
        akhir?.gerota = gerota
        akhir?.noduslimfe = noduslimfe
        akhir?.metastasis = metastasis
        akhir?.fuhrman = fuhrman
        akhir?.ecog = ecog
    }
    
}
