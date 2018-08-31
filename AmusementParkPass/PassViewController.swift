//
//  PassViewController.swift
//  AmusementParkPass
//
//  Created by Joey Devlin on 8/21/18.
//  Copyright © 2018 Joey. All rights reserved.
//

import UIKit

class PassViewController: UIViewController {
    var guestString = String()
    var typeOfGuest = String()
    var guestRideInfo = String()
    var guestFoodDis = String()
    var guestMerchDis = String()
    var areas: [ParkAreas?] = []
    var rides: SkipLines? =  SkipLines.NoSkip
    var discounts: Discounts? = Discounts.None

    override func viewDidLoad() {
        guestNameID.text = guestString
        typeOfGuestID.text = typeOfGuest
        guestRideInfoID.text = guestRideInfo
        guestMerchDiscountID.text = guestMerchDis
        guestFoodDiscountID.text = guestFoodDis
        officeButton.setTitle("Office", for: .normal)
        kitchenButton.setTitle("Kitchen", for: .normal)
        rideButton.setTitle("Rides", for: .normal)
        rideControlButton.setTitle("Ride Control", for: .normal)
       foodButton.setTitle("Food Discount", for: .normal)
        merchButton.setTitle("Merch Discount", for: .normal)
        maintButton.setTitle("Maintenance", for: .normal)
        amusementButton.setTitle("Amusement", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
   // ID Information Labels
    @IBOutlet weak var guestNameID: UILabel!
    @IBOutlet weak var typeOfGuestID: UILabel!
    @IBOutlet weak var guestRideInfoID: UILabel!
    @IBOutlet weak var guestFoodDiscountID: UILabel!
    @IBOutlet weak var guestMerchDiscountID: UILabel!
    
    @IBOutlet weak var testResultsView: UIView!
    
    @IBOutlet weak var officeButton: UIButton!
    @IBOutlet weak var rideControlButton: UIButton!
    @IBOutlet weak var kitchenButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var rideButton: UIButton!
    @IBOutlet weak var merchButton: UIButton!
    @IBOutlet weak var maintButton: UIButton!
    @IBOutlet weak var amusementButton: UIButton!
    
    
    
    
    // Access Test Buttons
    
    
    @IBAction func officeButton(_ sender: Any) {
        if areas.contains(ParkAreas.OfficeAreas) {
            accessGranted()
        }else {
            accessDenied()
        }
    }
    

    @IBAction func rideControlButton(_ sender: Any) {
        if areas.contains(ParkAreas.RideControlAreas) {
            accessGranted()
            
        }else {
            accessDenied()
        }
    }
    
    @IBAction func kitchenButton(_ sender: Any) {
        if areas.contains(ParkAreas.KitchenAreas) {
            accessGranted()
        }else {
            accessDenied()
        }
    }
    @IBAction func foodButton(_ sender: Any) {
        if discounts == Discounts.VipDiscount {
            accessGranted()
            testResultLabel.text = "10% on Food"
        }
        if discounts == Discounts.EmployeeDiscount {
            accessGranted()
            testResultLabel.text = "15% on Food"
        }
        if discounts == Discounts.ManagerDiscount {
            accessGranted()
            testResultLabel.text = "25% on Food"
        }
        if discounts == Discounts.SeasonPass {
            accessGranted()
            testResultLabel.text = "10% on Food"
        }
        if discounts == Discounts.SeniorGuest {
            accessGranted()
            testResultLabel.text = "10% on Food"
        }
        if discounts == Discounts.None {
            accessDenied()
        }
    }
    
    @IBAction func rideButton(_ sender: Any) {
        if rides == SkipLines.SkipAllLines {
            accessGranted()
        }else{
            accessDenied()
        }
    }
    
    @IBAction func merchButton(_ sender: Any) {
        if discounts == Discounts.VipDiscount {
            accessGranted()
            testResultLabel.text = "20% on Merch"
        }
        if discounts == Discounts.EmployeeDiscount {
            accessGranted()
            testResultLabel.text = "25% on Food"
        }
        if discounts == Discounts.ManagerDiscount {
            accessGranted()
            testResultLabel.text = "25% on Food"
        }
        if discounts == Discounts.SeasonPass {
            accessGranted()
            testResultLabel.text = "20% on Food"
        }
        if discounts == Discounts.SeniorGuest {
            accessGranted()
            testResultLabel.text = "10% on Food"
        }
        if discounts == Discounts.None {
            accessDenied()
        }
        
    }
        
    @IBAction func maintButton(_ sender: Any) {
        if areas.contains(ParkAreas.MaintenenceAreas) {
            accessGranted()
        }else {
            accessDenied()
        }
    }
    
    @IBAction func amusementButton(_ sender: Any) {
        if areas.contains(ParkAreas.RideAreas) {
            accessGranted()
        }else {
            accessDenied()
        }
    }
    
    
    @IBOutlet weak var testResultLabel: UILabel!
    
    
    
    func accessGranted() {
        testResultLabel.text = "Access Granted"
        testResultsView.backgroundColor = UIColor.green
    }
    func accessDenied() {
        testResultsView.backgroundColor = UIColor.red
        testResultLabel.text = "Access Denied"
    }
    
}

