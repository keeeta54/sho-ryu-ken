//
//  ViewController.swift
//  sho-ryu-ken 5
//
//  Created by 梶原敬太 on 2019/06/04.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    定数 ryu にimegeViewをいれる
    let ryu = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        最初の画面でりゅうの画像を表示
        shoryuken.image = UIImage(named: "attak1")
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var shoryuken: UIImageView!
    
    
    @IBAction func button(_ sender: Any) {
        for i in 1...20{
            /*    遅延処理
             1秒後に実行させたい！みたいな時に使えるコード
             DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
             1秒後に実行したい処理をここに書く  } */
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1 * Double(i)) {
                //  "shoryuken.imageにattak()"の中に1~20を代入していって画像を変えていく
                self.shoryuken.image = UIImage(named: "attak\(i)")
            }
            
        }
        
    }
    
    
}

