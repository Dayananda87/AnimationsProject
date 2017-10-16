//
//  ViewController.swift
//  AnimationsProject
//
//  Created by Nandu on 10/15/17.
//  Copyright © 2017 Nandu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var objectAnim: UIButton!
    var iImageView:UIImageView {
        get {
            return self.iImageView;
        }
        set {
            self.iImageView = iImageView;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func animateObject(_ sender: Any) {
        let _image = UIImage.init(imageLiteralResourceName: "sample.jpg");
        self.iImageView = UIImageView.init(frame: CGRect(x:30, y:30, width:100, height:100));
        self.iImageView.image = _image;
        self.view.addSubview(self.iImageView);
    }
    
    @IBAction func animateImageView(_ sender: Any) {
        
    }
}

