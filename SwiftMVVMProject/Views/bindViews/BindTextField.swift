//
//  BindTextField.swift
//  SwiftMVVMProject
//
//  Created by SawPyaeHtun on 1/8/19.
//  Copyright © 2019 SawPyaeHtun. All rights reserved.
//

import UIKit

class BindTextField: UITextField {

    var textChanged : (String) -> () = {_ in}
    
    func bind(callback : @escaping (String) -> ()) {
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc func textFieldDidChange (_ textField : UITextField){
        self.textChanged(textField.text!)
    }
}
