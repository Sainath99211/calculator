//
//  ViewController.swift
//  calulator
//
//  Created by Vinayak Balaji Tuptewar on 22/06/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var tf = UITextField()
    @IBOutlet weak var textFieldFirst: UITextField!
    
    @IBOutlet weak var textFieldSecond: UITextField!
    
    @IBOutlet weak var resultLable: UILabel!
    
    
    @IBAction func additionButton(_ sender: Any) {
        let textFieldfir :String = textFieldFirst.text!
        let textFieldSec :String = textFieldSecond.text!
        
        let texField1 :Int = Int(textFieldfir)!
        let textField2 :Int = Int(textFieldSec)!
        
        let result = textField2 + texField1
        resultLable.text = "\(result)"
    }
        
    @IBAction func subtractionButton(_ sender: Any) {
        let textFieldfir :String = textFieldFirst.text!
        let textFieldSec :String = textFieldSecond.text!
        
        let texField1 :Int = Int(textFieldfir)!
        let textField2 :Int = Int(textFieldSec)!
        
        let result = textField2 - texField1
        resultLable.text = "\(result)"
    }
    
    
    @IBAction func multiplicationButton(_ sender: Any) {
        let textFieldfir :String = textFieldFirst.text!
        let textFieldSec :String = textFieldSecond.text!
        
        let texField1 :Int = Int(textFieldfir)!
        let textField2 :Int = Int(textFieldSec)!
        
        let result = texField1 * textField2
        resultLable.text = "\(result)"
    }
    
    @IBAction func divisionButton(_ sender: UIButton) {
        let textFieldfir :String = textFieldFirst.text!
        let textFieldSec :String = textFieldSecond.text!
        
        let texField1 :Int = Int(textFieldfir)!
        let textField2 :Int = Int(textFieldSec)!
        
//        let result:Int = texField1 / textField2
//        resultLable.text = "\(result)"
        
        let result :Int = textField2 / texField1
        print(result)
        resultLable.text = "\(result)"
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFieldFirst.delegate = self
        textFieldSecond.delegate = self
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textField.clearButtonMode = UITextField.ViewMode.always
        return true
    }
    

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
        func textFieldDidBeginEditing(_ textField: UITextField) {
    
        }
    
    func textFieldDidEndEditing(_ textField: UITextField) {

    }
    
}

