//
//  ViewController.swift
//  AmusementParkPass
//
//  Created by Joey Devlin on 8/9/18.
//  Copyright © 2018 Joey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selected: Entrants = Entrants.Classic

    override func viewDidLoad() {
        super.viewDidLoad()
        disableAll()
        setGuestButtons(self)
        dobTextField.delegate = self
        ssnTextField.delegate = self
        projectTextField.delegate = self
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        companyTextField.delegate = self
        cityTextField.delegate = self
        streetTextField.delegate = self
        zipCodeTextField.delegate = self
        stateTextField.delegate = self
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    
    //MARK: - Buttons
    
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    
    // Specific pass buttons
    @IBOutlet weak var secondaryButton1: UIButton!
    @IBOutlet weak var secondaryButton2: UIButton!
    @IBOutlet weak var secondaryButton3: UIButton!
    @IBOutlet weak var secondaryButton4: UIButton!
    
    //Generate Pass and Populate Data Buttons
    
    @IBOutlet weak var populateDataButton: UIButton!
    @IBOutlet weak var generatePassButton: UIButton!
    
    //MARK: - Text Fields
    
    @IBOutlet weak var dobTextField: UITextField!
    @IBOutlet weak var ssnTextField: UITextField!
    @IBOutlet weak var projectTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var companyTextField: UITextField!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    
    // Button Methods
    
    func disableAll() {
        dobTextField.isEnabled = false
        ssnTextField.isEnabled = false
        projectTextField.isEnabled = false
        firstNameTextField.isEnabled = false
        lastNameTextField.isEnabled = false
        streetTextField.isEnabled = false
        companyTextField.isEnabled = false
        cityTextField.isEnabled = false
        stateTextField.isEnabled = false
        zipCodeTextField.isEnabled = false
        dobTextField.backgroundColor = nil
        ssnTextField.backgroundColor = nil
        projectTextField.backgroundColor = nil
        firstNameTextField.backgroundColor = nil
        lastNameTextField.backgroundColor = nil
        companyTextField.backgroundColor = nil
        streetTextField.backgroundColor = nil
        cityTextField.backgroundColor = nil
        stateTextField.backgroundColor = nil
        zipCodeTextField.backgroundColor = nil
        

    }
    
    func clearHighlight() {
        guestButton.setTitleColor(UIColor.white, for: .normal)
        employeeButton.setTitleColor(UIColor.white, for: .normal)
        managerButton.setTitleColor(UIColor.white, for: .normal)
        vendorButton.setTitleColor(UIColor.white, for: .normal)
        secondaryButton1.setTitleColor(UIColor.white, for: .normal)
        secondaryButton2.setTitleColor(UIColor.white, for: .normal)
        secondaryButton3.setTitleColor(UIColor.white, for: .normal)
        secondaryButton4.setTitleColor(UIColor.white, for: .normal)
        
    }
    
    func childGuest() {
        dobTextField.isEnabled = true
        dobTextField.backgroundColor = UIColor.white
    }
    
    func seasonPass() {
        firstNameTextField.isEnabled = true
        firstNameTextField.backgroundColor = UIColor.white
        
        lastNameTextField.backgroundColor = UIColor.white
        lastNameTextField.isEnabled = true
        
        cityTextField.isEnabled = true
        cityTextField.backgroundColor = UIColor.white
        
        stateTextField.isEnabled = true
        stateTextField.backgroundColor = UIColor.white
        
        zipCodeTextField.isEnabled = true
        zipCodeTextField.backgroundColor = UIColor.white
        
        streetTextField.isEnabled = true
        streetTextField.backgroundColor = UIColor.white
    }
    
    func seniorGuest(){
        firstNameTextField.isEnabled = true
        firstNameTextField.backgroundColor = UIColor.white
        
        lastNameTextField.backgroundColor = UIColor.white
        lastNameTextField.isEnabled = true
        
        dobTextField.isEnabled = true
        dobTextField.backgroundColor = UIColor.white
    }
    
    func hourlyEmp() {
        firstNameTextField.isEnabled = true
        firstNameTextField.backgroundColor = UIColor.white
        
        lastNameTextField.backgroundColor = UIColor.white
        lastNameTextField.isEnabled = true
        
        cityTextField.isEnabled = true
        cityTextField.backgroundColor = UIColor.white
        
        stateTextField.isEnabled = true
        stateTextField.backgroundColor = UIColor.white
        
        zipCodeTextField.isEnabled = true
        zipCodeTextField.backgroundColor = UIColor.white
        
        streetTextField.isEnabled = true
        streetTextField.backgroundColor = UIColor.white
    }
    
    func vendor() {
        firstNameTextField.isEnabled = true
        firstNameTextField.backgroundColor = UIColor.white
        
        lastNameTextField.backgroundColor = UIColor.white
        lastNameTextField.isEnabled = true
        
        companyTextField.isEnabled = true
        companyTextField.backgroundColor = UIColor.white
    }

    // Button Setting Methods
    
    func hideSecondaryButtons() {
        secondaryButton1.isHidden = true
        secondaryButton2.isHidden = true
        secondaryButton3.isHidden = true
        secondaryButton4.isHidden = true
    }
    
    func showSecondaryButtons() {
        secondaryButton1.isHidden = false
        secondaryButton2.isHidden = false
        secondaryButton3.isHidden = false
        secondaryButton4.isHidden = false
    }
    
    @IBAction func setGuestButtons(_ sender: Any) {
        self.selected = Entrants.Classic
        clearHighlight()
        disableAll()
        guestButton.setTitleColor(UIColor.red, for: .normal)
        secondaryButton1.setTitle("Child", for: .normal)
        secondaryButton2.setTitle("Vip", for: .normal)
        secondaryButton3.setTitle("Senior", for: .normal)
        secondaryButton4.setTitle("SeasonPass", for: .normal)
        showSecondaryButtons()
    }
    
    @IBAction func setEmployeeButtons(_ sender: Any) {
        self.selected = Entrants.Employee
        clearHighlight()
        disableAll()
        employeeButton.setTitleColor(UIColor.red, for: .normal)
        secondaryButton1.setTitle("Food", for: .normal)
        secondaryButton2.setTitle("Ride", for: .normal)
        secondaryButton3.setTitle("Maintenance", for: .normal)
        secondaryButton4.setTitle("Contract", for: .normal)
        showSecondaryButtons()
    }
    
    @IBAction func setManagerButtons(_ sender: Any) {
        self.selected = Entrants.Manager
        clearHighlight()
        disableAll()
        hideSecondaryButtons()
        managerButton.setTitleColor(UIColor.red, for: .normal)
        hourlyEmp()
    }
  
    
    @IBAction func setVendorButtons(_ sender: Any) {
        self.selected = Entrants.Vendor
        clearHighlight()
        disableAll()
        hideSecondaryButtons()
        vendorButton.setTitleColor(UIColor.red, for: .normal)
        vendor()
    }
    
    @IBAction func secondaryButton1picked(_ sender: Any) {
        if self.selected == Entrants.Classic || self.selected == Entrants.Child || self.selected == Entrants.Vip || self.selected == Entrants.SeasonPass || self.selected == Entrants.SeniorPass {
            clearHighlight()
            disableAll()
            secondaryButton1.setTitleColor(UIColor.red, for: .normal)
            childGuest()
            self.selected = Entrants.Child
        }
        
        if self.selected == Entrants.Employee || self.selected == Entrants.HourlyMaint || self.selected == Entrants.HourlyFood || self.selected == Entrants.HourlyRide || self.selected == Entrants.Contract  {
            clearHighlight()
            disableAll()
            secondaryButton1.setTitleColor(UIColor.red, for: .normal)
            hourlyEmp()
            self.selected = Entrants.HourlyFood
        }
    }
    
    
    @IBAction func secondaryButton2picked(_ sender: Any) {
         if self.selected == Entrants.Classic || self.selected == Entrants.Child || self.selected == Entrants.Vip || self.selected == Entrants.SeasonPass || self.selected == Entrants.SeniorPass {
            clearHighlight()
            disableAll()
            secondaryButton2.setTitleColor(UIColor.red, for: .normal)
            self.selected = Entrants.Vip
            
        }
        if self.selected == Entrants.Employee || self.selected == Entrants.HourlyMaint || self.selected == Entrants.HourlyFood || self.selected == Entrants.HourlyRide || self.selected == Entrants.Contract {
            clearHighlight()
            disableAll()
            secondaryButton2.setTitleColor(UIColor.red, for: .normal)
            hourlyEmp()
            self.selected = Entrants.HourlyRide
        }
        
    }
    
    @IBAction func secondaryButton3picked(_ sender: Any) {
        
        if self.selected == Entrants.Classic || self.selected == Entrants.Child || self.selected == Entrants.Vip || self.selected == Entrants.SeasonPass || self.selected == Entrants.SeniorPass {
            clearHighlight()
            disableAll()
            secondaryButton3.setTitleColor(UIColor.red, for: .normal)
            seniorGuest()
            self.selected = Entrants.SeniorPass
            
        }
        if self.selected == Entrants.Employee || self.selected == Entrants.HourlyMaint || self.selected == Entrants.HourlyFood || self.selected == Entrants.HourlyRide || self.selected == Entrants.Contract {
            clearHighlight()
            disableAll()
            secondaryButton3.setTitleColor(UIColor.red, for: .normal)
            hourlyEmp()
            self.selected = Entrants.HourlyMaint
        }
        
    }
    
    @IBAction func secondaryButton4picked(_ sender: Any) {
        if self.selected == Entrants.Classic || self.selected == Entrants.Child || self.selected == Entrants.Vip || self.selected == Entrants.SeasonPass || self.selected == Entrants.SeniorPass {
            clearHighlight()
            disableAll()
            secondaryButton4.setTitleColor(UIColor.red, for: .normal)
            seasonPass()
            self.selected = Entrants.SeasonPass
            
        }
        if self.selected == Entrants.Employee || self.selected == Entrants.HourlyMaint || self.selected == Entrants.HourlyFood || self.selected == Entrants.HourlyRide || self.selected == Entrants.Contract {
            clearHighlight()
            disableAll()
            secondaryButton4.setTitleColor(UIColor.red, for: .normal)
            hourlyEmp()
            projectTextField.backgroundColor = UIColor.white
            projectTextField.isEnabled = true
            self.selected = Entrants.Contract
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! PassViewController
        if selected == Entrants.Child {
            destVC.typeOfGuest = "Child"
            destVC.guestString = "CHILD PASS"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: None"
            destVC.guestMerchDis = "Merch Discount: None"
            destVC.areas = [ParkAreas.RideAreas]
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.None
        }
        if selected == Entrants.Vip {
            destVC.typeOfGuest = "VIP"
            destVC.guestString = "VIP PASS"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 10%"
            destVC.guestMerchDis = "Merch Discount: 20%"
            destVC.areas = [ParkAreas.RideAreas]
            destVC.rides = SkipLines.SkipAllLines
            destVC.discounts = Discounts.VipDiscount
        }
        if selected == Entrants.Classic {
            destVC.typeOfGuest = "Classic"
            destVC.guestString = "Classic Pass"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: None"
            destVC.guestMerchDis = "Merch Discount: None"
            destVC.areas = [ParkAreas.RideAreas]
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.None
        }
        if selected == Entrants.SeniorPass {
            destVC.typeOfGuest = "Senior Pass"
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 10%"
            destVC.guestMerchDis = "Merch Discount: 10%"
            destVC.areas = [ParkAreas.RideAreas]
            destVC.rides = SkipLines.SkipAllLines
            destVC.discounts = Discounts.SeniorGuest
        }
        if selected == Entrants.SeasonPass {
            destVC.typeOfGuest = "Season Pass"
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 10%"
            destVC.guestMerchDis = "Merch Discount: 20%"
            destVC.areas = [ParkAreas.RideAreas]
            destVC.rides = SkipLines.SkipAllLines
            destVC.discounts = Discounts.SeasonPass
        }
        
        if selected == Entrants.HourlyFood {
            destVC.typeOfGuest = "Food Employee"
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 15%"
            destVC.guestMerchDis = "Merch Discount: 25%"
            destVC.areas = [ParkAreas.RideAreas, ParkAreas.KitchenAreas]
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.EmployeeDiscount
        }
        if selected == Entrants.HourlyMaint {
            destVC.typeOfGuest = "Maintence Employee"
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 15%"
            destVC.guestMerchDis = "Merch Discount: 25%"
            destVC.areas = [ParkAreas.RideAreas, ParkAreas.MaintenenceAreas, ParkAreas.RideControlAreas, ParkAreas.KitchenAreas]
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.EmployeeDiscount
        }
        if selected == Entrants.HourlyRide{
            destVC.typeOfGuest = "Ride Employee"
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 15%"
            destVC.guestMerchDis = "Merch Discount: 25%"
            destVC.areas = [ParkAreas.RideAreas, ParkAreas.RideControlAreas]
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.EmployeeDiscount
        }
        
        if selected == Entrants.Manager {
            destVC.typeOfGuest = "Manager"
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: All Rides"
            destVC.guestFoodDis = "Food Discount: 25%"
            destVC.guestMerchDis = "Merch Discount: 25%"
            destVC.areas = [ParkAreas.RideAreas, ParkAreas.MaintenenceAreas, ParkAreas.RideControlAreas, ParkAreas.KitchenAreas, ParkAreas.OfficeAreas]
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.EmployeeDiscount
        }
        
        if selected == Entrants.Vendor {
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: NO RIDE ACCESS"
            destVC.guestFoodDis = "Food Discount: None"
            destVC.guestMerchDis = "Merch Discount: None"
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.None
            if companyTextField.text?.uppercased() == "ACME" {
                destVC.typeOfGuest = "Acme Vendor Pass"
                destVC.areas = [ParkAreas.KitchenAreas]
            }
            if companyTextField.text?.uppercased() == "ORKIN" {
                destVC.typeOfGuest = "Orkin Vendor Pass"
                destVC.areas = [ParkAreas.RideAreas, ParkAreas.KitchenAreas, ParkAreas.MaintenenceAreas]
            }
            if companyTextField.text?.uppercased() == "FEDEX" {
                destVC.typeOfGuest = "Fedex Vendor Pass"
                destVC.areas = [ParkAreas.MaintenenceAreas, ParkAreas.OfficeAreas]
            }
            if companyTextField.text?.uppercased() == "NW ELECTRICAL" {
                destVC.typeOfGuest = "NW Electrical Vendor"
                destVC.areas = [ParkAreas.RideAreas, ParkAreas.KitchenAreas, ParkAreas.MaintenenceAreas, ParkAreas.OfficeAreas, ParkAreas.RideControlAreas]
            }
        }

        if selected == Entrants.Contract{
            destVC.guestString = "\(firstNameTextField.text!) \(lastNameTextField.text!)"
            destVC.guestRideInfo = "Ride Access: NO RIDE ACCESS"
            destVC.guestFoodDis = "Food Discount: None"
            destVC.guestMerchDis = "Merch Discount: None"
            destVC.rides = SkipLines.NoSkip
            destVC.discounts = Discounts.None
            if projectTextField.text == "1001" {
                destVC.typeOfGuest = "Contract Emp for #1001"
                destVC.areas = [ParkAreas.RideAreas, ParkAreas.RideControlAreas]
            }
            if projectTextField.text == "1002" {
                destVC.typeOfGuest = "Contract Emp for #1002"
                destVC.areas = [ParkAreas.RideAreas, ParkAreas.RideControlAreas, ParkAreas.MaintenenceAreas]
            }
            if projectTextField.text == "1003" {
                destVC.typeOfGuest = "Contract Emp for #1003"
                destVC.areas = [ParkAreas.RideAreas, ParkAreas.KitchenAreas, ParkAreas.MaintenenceAreas, ParkAreas.OfficeAreas, ParkAreas.RideControlAreas]
            }
            if projectTextField.text == "2001" {
                destVC.typeOfGuest = "Contract Emp for #2001"
                destVC.areas = [ParkAreas.OfficeAreas]
            }
            if projectTextField.text == "2002" {
                destVC.typeOfGuest = "Contract Emp for #2002"
                destVC.areas = [ParkAreas.KitchenAreas, ParkAreas.MaintenenceAreas]
            }
        }
    }
    
    @IBAction func populateData(_ sender: Any) {
        if selected == Entrants.Child {
            dobTextField.text = "01/02/2002"
        }
        if selected == Entrants.Contract {
            projectTextField.text = "1001"
            firstNameTextField.text = "Bill"
            lastNameTextField.text = "Dover"
            streetTextField.text = "1004 ABC Dr. NW"
            cityTextField.text = "NewYork"
            stateTextField.text = "NewYork"
            zipCodeTextField.text = "12345"
        }
        if selected == Entrants.SeasonPass {
            firstNameTextField.text = "John"
            lastNameTextField.text = "Roger"
            streetTextField.text = "1234 One st NW"
            cityTextField.text = "Rochester"
            stateTextField.text = "Minnesota"
            zipCodeTextField.text = "55901"
        }
        if selected == Entrants.SeniorPass {
            firstNameTextField.text = "John"
            lastNameTextField.text = "Doe"
            dobTextField.text = "06/01/1950"
        }
        if selected == Entrants.HourlyFood || selected == Entrants.HourlyRide || selected == Entrants.HourlyMaint {
            firstNameTextField.text = "Henry"
            lastNameTextField.text = "Works Alot"
            streetTextField.text = "I work alot ln NW"
            cityTextField.text = "Grind Town"
            stateTextField.text = "NVRQUIT"
            zipCodeTextField.text = "IDONTSTOP"
        }
        if selected == Entrants.Vendor {
            firstNameTextField.text = "Jim"
            lastNameTextField.text = "Vend"
            companyTextField.text = "Fedex"
        }
        
        if selected == Entrants.Manager {
            firstNameTextField.text = "Boss"
            lastNameTextField.text = "Man"
            streetTextField.text = "I work alot ln NW"
            cityTextField.text = "Grind Town"
            stateTextField.text = "NVRQUIT"
            zipCodeTextField.text = "IDONTSTOP"
        }
    }
    
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

