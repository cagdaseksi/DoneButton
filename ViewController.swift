//
//  ViewController.swift
//  DoneButton
//
//  Created by MAC on 15/1/19.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.addDoneButtonKeybord()
        
    }
    @IBAction func button(_ sender: Any) {
        
        print(textField.text!)
        
    }
    
}

extension UITextField {
    
    @IBInspectable var doneAccessory: Bool {
        get {
            return self.doneAccessory
        }
        set (hasDone) {
            addDoneButtonKeybord()
        }
        
    }
    
    func addDoneButtonKeybord() {
        
        let doneToolbar:UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50  ))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done:UIBarButtonItem = UIBarButtonItem(title: "DONE", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace,done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
        
    }
    
    @objc func doneButtonAction() {
        
        self.resignFirstResponder()
        
    }
    
}


















