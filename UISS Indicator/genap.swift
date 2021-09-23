//
//  genap.swift
//  UISS Indicator
//
//  Created by M.Rachmadi on 31/08/21.
//

import UIKit

class genap: UIViewController {
    var tumor1 = 0
    var extend = 0
    var adrenal = 0
    var venacava = 0
    var gerota = 0
    var noduslimfe = 0
    var metastasis = 0
    var fuhrman = 1
    var ecog = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        print("tumor1" ,tumor1)
        print("extend" ,extend)
        print("adrenal" ,adrenal)
        print("venacava" ,venacava)
        print("gerota" ,gerota)
        print("noduslimfe" ,noduslimfe)
        print("metastasis" ,metastasis)
        print("fuhrman" ,fuhrman)
        print("ecog",ecog)

        // Do any additional setup after loading the view.
    }
    @IBAction func yanyeri(_ sender: Any) {
        self.extend = 1
        performSegue(withIdentifier: "adrenal", sender: self)
    }
    @IBAction func tidaknyeri(_ sender: Any) {
        self.extend = 0
        performSegue(withIdentifier: "adrenal", sender: self)
    }
    @IBAction func yavena(_ sender: Any) {
        self.venacava = 1
        performSegue(withIdentifier: "gerota", sender: self)
    }
    @IBAction func tidakvena(_ sender: Any) {
        self.venacava = 0
        performSegue(withIdentifier: "gerota", sender: self)
    }
    @IBAction func satulimfe(_ sender: Any) {
        self.noduslimfe = 0
        performSegue(withIdentifier: "metastasis", sender: self)
    }
    @IBAction func dualimfe(_ sender: Any) {
        self.noduslimfe = 1
        performSegue(withIdentifier: "metastasis", sender: self)
    }
    @IBAction func tigalimfe(_ sender: Any) {
        self.noduslimfe = 2
        performSegue(withIdentifier: "metastasis", sender: self)
    }
    @IBAction func satufuhrman(_ sender: Any) {
        self.fuhrman = 1
        performSegue(withIdentifier: "ecog", sender: self)
    }
    @IBAction func duafuhrman(_ sender: Any) {
        self.fuhrman = 2
        performSegue(withIdentifier: "ecog", sender: self)
    }
    @IBAction func tigafuhrman(_ sender: Any) {
        self.fuhrman = 3
        performSegue(withIdentifier: "ecog", sender: self)
    }
    @IBAction func empatfuhrman(_ sender: Any) {
        self.fuhrman = 4
        performSegue(withIdentifier: "ecog", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as? ganjil
        next?.tumor1 = tumor1
        next?.extend = extend
        next?.adrenal = adrenal
        next?.venacava = venacava
        next?.gerota = gerota
        next?.noduslimfe = noduslimfe
        next?.metastasis = metastasis
        next?.fuhrman = fuhrman
        next?.ecog = ecog
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
