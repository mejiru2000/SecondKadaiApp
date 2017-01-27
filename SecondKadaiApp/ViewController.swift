//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 羽根田 久矢 on 2017/01/26.
//  Copyright © 2017年 hisaya.haneda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.name = label.text!
      }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}

