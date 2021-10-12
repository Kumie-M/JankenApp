//
//  JankenViewController.swift
//  JankenApp
//
//  Created by Kumie Miyata on 2021/10/11.
//

import UIKit

final class JankenViewController: UIViewController {
    
    @IBOutlet private weak var jankenImageYou: UIImageView!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func resultGu(_ sender: UIButton) {
        
        let plusNum = 1
        let n = Int(arc4random()) % 100 + plusNum; //乱数発生
        let gooImage = UIImage(named: "0")
        let chokiImage = UIImage(named: "1")
        let paaImage = UIImage(named: "2")
        
        if( n % 3 == 0) { //グー
            resultLabel.text = "相手はグーでした。あいこです。";
            jankenImageYou.image = gooImage;
        } else if( n % 3 == 1) { //チョキ
            resultLabel.text = "相手はチョキでした。あなたの勝ちです！";
            jankenImageYou.image = chokiImage;
        } else { //パー
            resultLabel.text = "相手はパーでした。あなたの負けです。";
            jankenImageYou.image = paaImage;
        }
    }
    
    @IBAction private func resultChoki(_ sender: UIButton) {
        let n = arc4random() % 100 + 1; //乱数発生
        let gooImage = UIImage(named: "0")
        let chokiImage = UIImage(named: "1")
        let paaImage = UIImage(named: "2")
        
        if( n % 3 == 1) { //グー
            resultLabel.text = "相手はグーでした。あなたの負けです。";
            jankenImageYou.image = gooImage;
        } else if( n % 3 == 0) { //チョキ
            resultLabel.text = "相手はチョキでした。あいこです。";
            jankenImageYou.image = chokiImage;
        } else { //パー
            resultLabel.text = "相手はパーでした。あなたの勝ちです！";
            jankenImageYou.image = paaImage;
        }
    }
    
    @IBAction private func resultPa(_ sender: UIButton) {
        let n = arc4random() % 100 + 1; //乱数発生
        let gooImage = UIImage(named: "0")
        let chokiImage = UIImage(named: "1")
        let paaImage = UIImage(named: "2")
        
        if( n % 3 == 1) { //グー
            resultLabel.text = "相手はチョキでした。あなたの負けです。";
            jankenImageYou.image = chokiImage;
        } else if( n % 3 == 0) { //チョキ
            resultLabel.text = "相手はグーでした。あなたの勝ちです！";
            jankenImageYou.image = gooImage;
        } else { //パー
            resultLabel.text = "相手はパーでした。あいこです。";
            jankenImageYou.image = paaImage;
        }
    }
}

