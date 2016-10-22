//
//  ViewController.swift
//  FunnyNames
//
//  Created by Steve Tuckner on 10/22/16.
//  Copyright © 2016 Steve Tuckner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var nameTextField: UITextField!;
    @IBOutlet weak var modifiedNameLabel: UILabel!;

    @IBAction func nameFieldDidChange(textField: UITextField) {
        print("name is now \(self.nameTextField.text)")
        let name = self.nameTextField.text
        let range = NSMakeRange(0, name!.characters.count)
        
        
        do {
            let regex = try NSRegularExpression(pattern: "[aeiou]", options: .caseInsensitive)
            let newName = regex.stringByReplacingMatches(in: name!, range: range, withTemplate: "oodle")
            self.modifiedNameLabel.text = newName
        }
        catch _ {
            
        }
    }
}

