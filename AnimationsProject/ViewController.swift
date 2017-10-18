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
    var iImageView:UIImageView? = nil;
    
    //Calculated properties dont modify the same variable to goes into stackoverflow exception
    //calculated properties are used only to do some calculations and modyfy the values of other properties
    //in otherwords calculated properties depends on other properties to calculate values.
    //Below commented code is wrong usage of calculated properties.
    /*
    var name:String {
        get {
            return name;
        }
    
        set(newName){
            name = newName;
        }
    }
     */
    
    //Not an optional property
    //var name:String = String()
    
    //Optional property, values can be retrived by ! operator ex: self.variablename!
    var name:String? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latinCapitalLetterA: Character = "\u{41}"
        
        let cyrillicCapitalLetterA: Character = "\u{0410}"
        
        if latinCapitalLetterA != cyrillicCapitalLetterA {
            print("These two characters are not equivalent.\(latinCapitalLetterA)------\(cyrillicCapitalLetterA)")
        }
        self.name = "nandu";
        print("My name is "+self.name!)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func animateObject(_ sender: Any) {
        let _image = UIImage.init(imageLiteralResourceName: "sample.jpg");
        self.iImageView = UIImageView.init(frame: CGRect(x:30, y:30, width:100, height:100));
        self.iImageView?.image = _image;
        self.view.addSubview(self.iImageView!);
    }
    
    @IBAction func animateImageView(_ sender: Any) {
        UIView.animate(withDuration: 0.5) {
            var cgPoint = self.iImageView?.center;
            cgPoint!.x += 100
            cgPoint!.y += 100
            self.iImageView?.center = cgPoint!;
        }
    }
}

