//
//  ViewController.swift
//  Food Recipes
//
//  Created by Md Sifat on 12/11/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit
var arr = ["Kacci","Chaumin","Grilled Chicken","Indian_Food"]
var imgArr = [UIImage(named: "Kacci"),UIImage(named: "Chaumin"),UIImage(named: "Grilled Chicken"),UIImage(named: "Indian_Food")]
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.ListTitleShowLbl?.text = arr[indexPath.row]
        cell.ListImgView.image = imgArr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
        vc?.img = imgArr[indexPath.row]!
        vc?.listTitle = arr[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

