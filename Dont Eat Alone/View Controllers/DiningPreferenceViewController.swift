//
//  DiningPreferenceViewController.swift
//  Dont Eat Alone
//
//  Created by Samuel J. Lee on 4/15/18.
//  Copyright © 2018 Dont Eat Alone. All rights reserved.
//

import UIKit

class DiningPreferenceViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var diningField: UITextField!
    
    
    let picker = UIDatePicker()
    let dining_halls = ["Bruin Plate", "Covel Commons", "De Neve", "Feast", "Bruin Cafe", "Cafe 1919", "Rendezvous", "The Study at Hedrick", "No preference"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dinePick = UIPickerView()
        dinePick.delegate = self as? UIPickerViewDelegate
        diningField.inputView = dinePick
        createDataPicker()
        
        // Do any additional setup after loading the view.
    }
    

    func createDataPicker() {
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        //done button for toolbar
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: false)
        
        dateField.inputAccessoryView = toolbar
        dateField.inputView = picker
        //format picker for date
        picker.datePickerMode = .date
        var components = DateComponents()
        picker.minimumDate = Calendar.current.date(byAdding: components, to: Date())
    }
    

    @objc func donePressed() {
        //format date
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        let dateString = formatter.string(from: picker.date)
        
        dateField.text = "\(dateString)"
        //ADD THE DATE TO POTENTIAL MATCH STRUCTURE
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dining_halls.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dining_halls[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        diningField.text = dining_halls[row]
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
