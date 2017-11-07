//
//  PopUpViewController.swift
//  Tip Calculator
//
//  Created by patricialenorechu on 05/11/2017.
//  Copyright © 2017 Patricia Chu. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let tips =  ["18%", "20%", "25%"] // Assigns values to picker view
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // Tells how many rows there are
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tips[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tips.count // Length of array
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = tips[row] // Uses the value selected by user.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
