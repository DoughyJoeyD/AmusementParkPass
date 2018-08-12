//
//  tests.swift
//  AmusementParkPass
//
//  Created by Joey Devlin on 8/11/18.
//  Copyright © 2018 Joey. All rights reserved.
//

import Foundation


func runtests() {
    
// MARK: First Case
    
    /*
    
    let joey = Classic()
    let pass1 = RegPass(passHolder: joey)
    let gate1 = PassChecker(pass: pass1)
    do {
        try pass1.validPass()
    }catch let error {
        print(error.localizedDescription)
    }
    gate1.areaCheck(area: ParkAreas.RideAreas)
    gate1.discountCheck()
    gate1.rideSkip()
    
    */
    
// MARK: Second Case
    
    /*
    
    let jack = Child(dateOfBirth: "06/01/1990")
    let pass2 = RegPass(passHolder: jack)
    do {
        try pass2.validPass()
    }catch let error {
        print(error.localizedDescription)
    }
    
    let gate2 = PassChecker(pass: pass2)
    gate2.areaCheck(area: ParkAreas.KitchenAreas)
    gate2.discountCheck()
    gate2.rideSkip()
    
    */
    
// Mark: Third Case
    
    /*
    
    let john = Child(dateOfBirth: nil)
    let pass3 = RegPass(passHolder: john)
    
    do {
        try pass3.validPass()
    }catch let error {
        print(error.localizedDescription)
    }
 
    */
    
//MARK: Fourth Case
    
    /*
 
    let joey = Vip()
    let pass69 = RegPass(passHolder: joey)
    let gate69 = PassChecker(pass: pass69)
    gate69.rideSkip()
 
    */
    
// Employee Tests
     
// MARK: Emp Case 1
    
    /*
    
    let jason = HourlyMaint(firstName: "Jason", lastName: "Borne", address: "123 hes here", city: "Everywhere", state: "Even there", zipCode: "00000")
    let pass4 = EmployeePass(passHolder: jason)
    do {
        try pass4.vaildPass()
    }catch let error {
        print(error.localizedDescription)
    }
    let gate4 = EmpPassChecker(pass: pass4)
    gate4.discountCheck()
    gate4.areaCheck(area: ParkAreas.MaintenenceAreas)
    
    */
    
//MARK: Emp case 2
    
    /*
    
    let jackson = HourlyRide(firstName: "Jackson", lastName: "Borne", address: nil,  city: "Everywhere", state: "Even there", zipCode: "00000")
    let pass5 = EmployeePass(passHolder: jackson)
    do {
        try pass5.vaildPass()
    }catch let error{
        print(error.localizedDescription)
    }
    let gate5 = EmpPassChecker(pass: pass5)
    gate5.areaCheck(area: ParkAreas.KitchenAreas)
    
    */
     
//MARK: Emp case 3
    
    /*
     
    let japson = HourlyFood(firstName: nil, lastName: nil, address: nil,  city: nil, state: nil, zipCode: nil)
    let pass6 = EmployeePass(passHolder: japson)
    
    do {
        try pass6.vaildPass()
    }catch let error{
        print(error.localizedDescription)
    }
    
    let gate6 = EmpPassChecker(pass: pass6)
    gate6.areaCheck(area: ParkAreas.KitchenAreas)
    gate6.discountCheck()
     
    */
    
//MARK: Emp case 4
    
    /*
    
    let jonnnnny = Manager(firstName: "jack", lastName: "Todo", address: "1234",  city: "Rochester", state: "Maine", zipCode: "30000")
    let pass7 = EmployeePass(passHolder: jonnnnny)
    
    do {
        try pass7.vaildPass()
    }catch let error{
        print(error.localizedDescription)
    }
    let gate7 = EmpPassChecker(pass: pass7)
    gate7.areaCheck(area: ParkAreas.OfficeAreas)
    gate7.discountCheck()
 
 */
    
}
