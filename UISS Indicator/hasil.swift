//
//  hasil.swift
//  UISS Indicator
//
//  Created by M.Rachmadi on 31/08/21.
//

import UIKit

class hasil: UIViewController {

    @IBOutlet weak var stageuiss: UILabel!
    @IBOutlet weak var persentase2tahun: UILabel!
    @IBOutlet weak var persentase5tahun: UILabel!
    
    var tumor1:Int = 0
    var extend:Int = 0
    var adrenal:Int = 0
    var venacava:Int = 0
    var gerota:Int = 0
    var noduslimfe:Int = 0
    var metastasis:Int = 0
    var fuhrman:Int = 1
    var ecog:Int = 0
    var t:Int = 0
    var n:Int = 0
    var m:Int = 0
    var tnm:Int = 0
    var uiss:Int = 0
    var stage = "I"
    var twoyear = "100%"
    var fiveyear = "100%"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Nilai T
        if gerota == 1 {
            self.t = 4
        }
        else {
            if venacava == 1 {
                self.t = 3
            }
            else {
                if adrenal == 1 {
                    self.t = 3
                }
                else {
                    if extend == 1 {
                        self.t = 3
                    }
                    else {
                        if tumor1 == 0 {
                            self.t = 2
                        }
                        else {
                            self.t = 1
                        }
                    }
                }
            }
        }
        // Nilai N
        if noduslimfe == 0 {
            self.n = 0
        }
        else {
            if noduslimfe == 1 {
                self.n = 1
            }
            else {
                    self.n = 2
                }
        }
        // Nilai M
        if metastasis == 0 {
            self.m = 0
        }
        else {
            self.m = 1
        }
        // Nilai TMN
        if t == 1, n == 0, m == 0 {
            self.tnm = 1
        }
        else {
            if t == 2, n == 0, m == 0 {
                self.tnm = 2
            }
            else {
                if t == 3, m == 0 {
                    self.tnm = 3
                }
                else {
                    if t == 4, m == 0 {
                        self.tnm = 4
                    }
                    else {
                        if m == 1 {
                            self.tnm = 4
                        }
                    }
                }
            }
        }
        // Score UISS
        if tnm == 4, fuhrman == 4, ecog > 0 {
            self.uiss = 5
        }
        else {
            if tnm == 4, fuhrman >= 1, fuhrman <= 3, ecog >= 1 {
                self.uiss = 4
            }
            else {
                if tnm == 4, fuhrman >= 3, fuhrman <= 4, ecog == 0 {
                    self.uiss = 4
                }
                else {
                    if tnm == 4, fuhrman >= 1, fuhrman <= 2, ecog == 0 {
                        self.uiss = 3
                    }
                    else {
                        if tnm == 3, fuhrman >= 2, fuhrman <= 4, ecog >= 1 {
                            self.uiss = 3
                        }
                        else {
                            if tnm == 3, fuhrman == 1, ecog >= 1 {
                                self.uiss = 2
                            }
                            else {
                                if tnm == 3, ecog == 0 {
                                    self.uiss = 2
                                }
                                else {
                                    if tnm == 2 {
                                        self.uiss = 2
                                    }
                                    else {
                                        if tnm == 1, fuhrman >= 3 , fuhrman <= 4 {
                                            self.uiss = 2
                                        }
                                        else {
                                            if tnm == 1, fuhrman >= 1, fuhrman <= 2, ecog >= 1 {
                                                self.uiss = 2
                                            }
                                            else {
                                                if tnm == 1, fuhrman >= 1, fuhrman <= 2, ecog == 0 {
                                                    self.uiss = 1
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        // Survival rate 2 & 5 tahun
        if uiss == 5 {
            self.twoyear = "9%"
            self.fiveyear = "0%"
            self.stage = "V"
        }
        else {
            if uiss == 4 {
                self.twoyear = "42%"
                self.fiveyear = "23%"
                self.stage = "IV"
            }
            else {
                if uiss == 3 {
                    self.twoyear = "66%"
                    self.fiveyear = "39%"
                    self.stage = "III"
                }
                else {
                    if uiss == 2 {
                        self.twoyear = "89%"
                        self.fiveyear = "67%"
                        self.stage = "II"
                    }
                    else {
                        self.twoyear = "96%"
                        self.fiveyear = "94%"
                        self.stage = "I"
                    }
                }
            }
        }
        print("tumor" ,tumor1)
        print("extend" ,extend)
        print("adrenal" ,adrenal)
        print("venacava" ,venacava)
        print("gerota" ,gerota)
        print("noduslimfe" ,noduslimfe)
        print("metastasis" ,metastasis)
        print("fuhrman" ,fuhrman)
        print("ecog" ,ecog)
        print("t" ,t)
        print("n" ,n)
        print("m" ,m)
        print("tnm" ,tnm)
        print("uiss" ,uiss)
        print("2yr" ,twoyear)
        print("5yr" ,fiveyear)
    }
    override func viewWillAppear(_ animated: Bool) {
        stageuiss.text = stage
        persentase2tahun.text = twoyear
        persentase5tahun.text = fiveyear
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
