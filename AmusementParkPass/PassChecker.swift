//
//  PassChecker.swift
//  AmusementParkPass
//
//  Created by Joey Devlin on 8/11/18.
//  Copyright © 2018 Joey. All rights reserved.
//

import Foundation

class PassChecker: passParams {
    var pass: RegPass
    
    
    init(pass: RegPass) {
        self.pass = pass
    }
    
    
    func areaCheck(area: ParkAreas) {
        let access = pass.passHolder.areas
        if access.contains(area) {
            print("Access Granted")
        }else{
            print("YOU SHALL NOT PASS!")
        }
    }
    
    func discountCheck() {
        let discount = pass.passHolder.discounts
        
        if discount == Discounts.VipDiscount {
            print("ten on food, 20 on merch")
        }else{
            print("Sorry no discount mate")
        }
    }
    
    func rideSkip() {
        if pass.passHolder.skipLines == true {
            print("You may skip this line")
        }else{
            print("You shall not pass!!!!")
        }
    }
    
    
}

class EmpPassChecker: passParams {
    var pass: EmployeePass
    
    
    init(pass: EmployeePass) {
        self.pass = pass
    }
    
    func areaCheck(area: ParkAreas) {
        let access = pass.passHolder.areas
        if access.contains(area) {
            print("Access Granted")
        }else{
            print("YOU SHALL NOT PASS!")
        }
    }
    
    func discountCheck() {
        let discount = pass.passHolder.discounts
        
        if discount == Discounts.EmployeeDiscount {
            print("15 on food and 25 on merch")
        }else{
            print("Sorry no discount mate")
        }
    }
}

protocol passParams {
    func areaCheck(area: ParkAreas)
    func discountCheck()
}
