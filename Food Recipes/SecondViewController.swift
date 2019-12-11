//
//  SecondViewController.swift
//  Food Recipes
//
//  Created by Md Sifat on 12/11/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var TitleLBL: UILabel!
    
    var listTitle = ""
    var img = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleLBL.text = title
        ImgView.image = img
        // Do any additional setup after loading the view.
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
