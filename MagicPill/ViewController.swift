
//
//  ViewController.swift
//  MagicPill
//
//  Created by Raycho Karaivanov on 14/11/2016.
//  Copyright © 2016 Raycho Karaivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var pillPic: UIImageView!
    @IBOutlet weak var magicLbl: UILabel!
    @IBOutlet weak var lineImg: UIView!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var addressTxt: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var zipLbl: UILabel!
    @IBOutlet weak var zipTxt: UITextField!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var countryTxt: UITextField!
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    
    let states = ["Austria", "Belgium", "Bulgaria", "Croatia", "Republic of Cyprus", "Czech Republic", "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary", "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands", "Poland", "Portugal", "Romania", "Slovakia", "Slovenia", "Spain", "Sweden", "UK"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    func hideLow() {
        statePicker.isHidden = false
        countryTxt.isUserInteractionEnabled = false
        zipLbl.isHidden = true
        zipTxt.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    func hideAll() {
        statePicker.isHidden = true
        buyNowBtn.isHidden = true
        pillPic.isHidden = true
        magicLbl.isHidden = true
        priceLbl.isHidden = true
        lineImg.isHidden = true
        nameLbl.isHidden = true
        nameTxt.isHidden = true
        addressLbl.isHidden = true
        addressTxt.isHidden = true
        cityLbl.isHidden = true
        cityTxt.isHidden = true
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipLbl.isHidden = true
        zipTxt.isHidden = true
    }

    
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        
        if nameTxt.text != "" {
            if addressTxt.text != "" {
                if cityTxt.text != "" {
                    if countryTxt.text != ""{
                        if zipTxt.text != "" {
                            hideAll()
                            successImg.isHidden = false
                        }
                    }
                }
            }
        }
        
        
        
    }
   
    @IBAction func countryTxtPressed(_ sender: Any) {
       
        hideLow()
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
       
        countryTxt.text = states[row]
        statePicker.isHidden = true
        zipLbl.isHidden = false
        zipTxt.isHidden = false
        buyNowBtn.isHidden = false
        countryTxt.isUserInteractionEnabled = true
        zipTxt.becomeFirstResponder()
        
    }
}

