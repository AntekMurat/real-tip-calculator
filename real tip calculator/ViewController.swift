//
//  ViewController.swift
//  real tip calculator
//
//  Created by Anthony H. Murat on 10/26/15.
//  Copyright © 2015 Anthony H. Murat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var tax: Double = 0.15
    var numberPeople = 1
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipDisplayLabel: UILabel!
    var people = 1
    
    @IBOutlet weak var personSplitAmount: UILabel!
    @IBOutlet weak var tenPercent: UIButton!
    @IBOutlet weak var fifteenPercent: UIButton!
    @IBOutlet weak var twentyPercent: UIButton!
    @IBOutlet weak var twentyFivePercent: UIButton!
    @IBOutlet weak var upPerson: UIButton!
    @IBOutlet weak var downPerson: UIButton!
    @IBOutlet weak var tipSplitAmount: UILabel!
    
    
    
    @IBAction func onTapCalculateTip(sender: UIButton)
    {
        let billTextFieldString = billAmountTextField.text
        let billTextFieldNSString = NSString(string: billTextFieldString!)
        let billTextField = billTextFieldNSString.doubleValue
        let bill = billTextField * 0.15
        tipDisplayLabel.text = "Your tip is $\(bill)"
        
        
    }
    
    
    
    
    @IBAction func topLeftButton(sender: UIButton)
    {
       
        
        let billTextFieldString = billAmountTextField.text
        let billTextFieldNSString = NSString(string: billTextFieldString!)
        let billTextField = billTextFieldNSString.doubleValue
        let bill = billTextField * 0.1
        tipDisplayLabel.text = "Your tip is $\(bill)"
        
        tenPercent.setImage(UIImage(named:"10_selected_image"), forState:UIControlState.Normal)
        fifteenPercent.setImage(UIImage(named:"15_unselected_image"), forState:UIControlState.Normal)
        twentyPercent.setImage(UIImage(named:"20_unselected_image"), forState:UIControlState.Normal)
        twentyFivePercent.setImage(UIImage(named:"25_unselected_image"), forState:UIControlState.Normal)
    }
    
    @IBAction func topRightButton(sender: UIButton) {
        let billTextFieldString = billAmountTextField.text
        let billTextFieldNSString = NSString(string: billTextFieldString!)
        let billTextField = billTextFieldNSString.doubleValue
        let bill = billTextField * 0.15
        tipDisplayLabel.text = "Your tip is $\(bill)"
        
        tenPercent.setImage(UIImage(named:"10_unselected_image"), forState:UIControlState.Normal)
        fifteenPercent.setImage(UIImage(named:"15_selected_image"), forState:UIControlState.Normal)
        twentyPercent.setImage(UIImage(named:"20_unselected_image"), forState:UIControlState.Normal)
        twentyFivePercent.setImage(UIImage(named:"25_unselected_image"), forState:UIControlState.Normal)
    }
   
    @IBAction func bottomLeftButton(sender: UIButton) {
        let billTextFieldString = billAmountTextField.text
        let billTextFieldNSString = NSString(string: billTextFieldString!)
        let billTextField = billTextFieldNSString.doubleValue
        let bill = billTextField * 0.2
        tipDisplayLabel.text = "Your tip is $\(bill)"
        
        tenPercent.setImage(UIImage(named:"10_unselected_image"), forState:UIControlState.Normal)
        fifteenPercent.setImage(UIImage(named:"15_unselected_image"), forState:UIControlState.Normal)
        twentyPercent.setImage(UIImage(named:"20_selected_image"), forState:UIControlState.Normal)
        twentyFivePercent.setImage(UIImage(named:"25_unselected_image"), forState:UIControlState.Normal)
    }
  
    @IBAction func bottomRightButton(sender: UIButton) {
        let billTextFieldString = billAmountTextField.text
        let billTextFieldNSString = NSString(string: billTextFieldString!)
        let billTextField = billTextFieldNSString.doubleValue
        let bill = billTextField * 0.25
        tipDisplayLabel.text = "Your tip is $\(bill)"
        
        tenPercent.setImage(UIImage(named:"10_unselected_image"), forState:UIControlState.Normal)
        fifteenPercent.setImage(UIImage(named:"15_unselected_image"), forState:UIControlState.Normal)
        twentyPercent.setImage(UIImage(named:"20_unselected_image"), forState:UIControlState.Normal)
        twentyFivePercent.setImage(UIImage(named:"25_selected_image"), forState:UIControlState.Normal)
    }
   
    
    
    @IBAction func upPerson(sender: UIButton)
    {
        ++people
        personSplitAmount.text = String(people)
        downPerson.enabled = true
    }
    
    
    @IBAction func downPerson(sender: UIButton)
    {
        if(people>1)
        {
            --people
        }
        if(people == 1)
        {
            downPerson.enabled = false
        }
        personSplitAmount.text = String(people)
    }
    
   
    @IBAction func splitTip(sender: UIButton)
    {
       // messed up the labels. Have to rearrange!
        
        billAmountTextField.resignFirstResponder()
        let billTextFieldString = billAmountTextField.text
        let billTextFieldNSSTring = NSString(string: billTextFieldString!)
        let num = billTextFieldNSSTring.doubleValue
        let splitResult = (num*tax)
        tipSplitAmount.text = "$" + (NSString(format: "%.2f", splitResult) as String)
        personSplitAmount.text = "$" + (NSString(format: "%.2f", (num+splitResult)/Double(numberPeople)) as String)
    }
    
    
    
    
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "orange_bg.png")!)
    }

    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

