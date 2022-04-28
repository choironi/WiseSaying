//
//  ViewController.swift
//  wisesaying
//
//  Created by 최지우 on 2022/04/27.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
 
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "지금 공부 안 하면 더울 때 더운 데서 일하고 추울 때 추운 데서 일한다.", names: "박명수", url: "https://cdn.allets.com/550/2018/12/26/550_398981_1545818685.webp"),
        Quote(contents: "티끌 모아 티끌", names: "박명수", url: "https://cdn.allets.com/550/2018/12/27/550_399109_1545871261.webp"),
        Quote(contents: "오늘은 다들 야근 좀 해야겠어요", names: "유재석", url: "https://bunny.jjalbot.com/2016/10/SyW2i8p8C/20160820_57b83bfc6d40e.jpg"),
        Quote(contents: "행복해서 웃는게 아니라 웃어서 행복한겁니다", names: "노홍철", url: "https://image.ajunews.com/content/image/2011/02/27/20110227000010_0.jpg")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeQuoteButton(_ sender: Any) {
        let random = Int(arc4random_uniform(4))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.names
        self.imageView.kf.setImage(with:URL(string: quote.url))

    }
}

/*
        let url = URL(string: quote.url)
        imageView.kf.setImage(with: url)
        
        SlaveFisher(image: UIImage())
        SlaveFisher(httpsImage: "https://cdn.allets.com/550/2018/12/26/550_398981_1545818685.webp")
        SlaveFisher(localPath: "C://Download/image1.png")
        let url2 = URL(string: quote.url)
        self.imageView.kf.setImage(with:url2)
    }
}

class SlaveFisher{ // Class
    
    init(httpsImage : String){
        print("with 1 : \(httpsImage)")
    }
    
    init(localPath: String){
        print("with 2 : \(localPath)")
    }
    
    init(image: UIImage){
        print("with 3 : \(image)")
        
    }
    func myFunc(string: String){
        
    }
}

*/
