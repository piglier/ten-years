//
//  ViewController.swift
//  homework4
//
//  Created by PIG on 2019/1/29.
//  Copyright © 2019 PIG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var YearSlider: UISlider!
    @IBOutlet weak var ChooseImg: UIImageView!
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Label2: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        Label.text = String(Int(YearSlider.value))
        let dateValue = DateFormatter()
        dateValue.dateFormat = "YYYY"
        let y = dateValue.string(from: DatePicker.date)
        Label2.text = String(y)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func YearSliderAction(_ sender: Any) {
        ChooseImg.image = UIImage(named: "\(Int(YearSlider.value)).png")
        Label.text = String(Int(YearSlider.value))
        
    }
    
    @IBAction func DatePickerAction(_ sender: Any) {
        let dateValue = DateFormatter()
        dateValue.dateFormat = "YYYY"
        let y = dateValue.string(from: DatePicker.date)
        let yy = Int(y)
        let year = yy!-1911
        ChooseImg.image = UIImage(named: "\(Int(Int(year))).png")
        Label2.text = String(y)
        
    }
}

