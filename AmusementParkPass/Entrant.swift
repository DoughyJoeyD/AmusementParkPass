//
//  Entrant.swift
//  AmusementParkPass
//
//  Created by Joey Devlin on 8/9/18.
//  Copyright © 2018 Joey. All rights reserved.
//

import Foundation

/*

 This project is broken down into Entrants, Passes, PassChecker(Swipe), and test class
 
 A Visitor to the park is either a Entrant (Child, Vip, Classic) or an Employee(HourlyMaint, HourlyRide, HourlyFood, Manager)
 Passes are created for ever Visitor, RegPasses for Entrants and EmpPasses for Employees
 The pass checker is also divided the same way the passes classes are (EmpPassChecker and RegularPassChecker)
 There is a test class for each of the Employees demontrating catching erorrs thrown from not including personal info)
 There are also test classes for the Entrants catching errors thrown by not having a dob(child).
 Protocols Define the Class types and enums define error types, park areas and discount types as well as EntrantTypes.
 
 
*/



class Entrant: CanEnter {
    
    var entrantType: Entrants
    var rideAccess: Bool
    var skipRides: Bool
    var areas = [ParkAreas.RideAreas]
    var discounts: Discounts?
    
    init(entrant: Entrants, rideAccess: Bool, skipRides: Bool, discounts: Discounts?) {
        self.entrantType = entrant
        self.rideAccess = rideAccess
        self.skipRides = skipRides
        self.discounts = discounts
    }
}

class Child: Entrant, isChild {
    var dateOfBirth: String?
    
    init(dateOfBirth: String?) {
        self.dateOfBirth = dateOfBirth
        super.init(entrant: Entrants.Child, rideAccess: true, skipRides: false, discounts: nil)
    }
    
    var Age: Int {
        if dateOfBirth != nil {
        
            
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let dateFromString = dateFormatter.date(from: dateOfBirth!)
            
            
        let now = Date()
        let birthday = dateFromString
        let calendar = Calendar.current
        
        let ageComponents = calendar.dateComponents([.year], from: birthday!, to: now)
        return ageComponents.year!
        }else {
            return 0
        }
    }
    
}

class Classic: Entrant {
    init() {
        super.init(entrant: Entrants.Classic, rideAccess: true, skipRides: false, discounts: nil)
    }
}

class Vip: Entrant {
    init() {
        super.init(entrant: Entrants.Vip, rideAccess: true, skipRides: true, discounts: Discounts.VipDiscount)
    }
}


class Employee: isEmployee, CanEnter {
    
    
    var entrantType: Entrants
    var rideAccess: Bool = true
    var areas: [ParkAreas]
    
    var firstName: String?
    var lastName: String?
    var address: String?
    var city: String?
    var state: String?
    var zipCode: String?
    
    var discounts: Discounts?
    
    init(areas: [ParkAreas]) {
        self.entrantType = Entrants.Employee
        self.areas = areas
        self.discounts = Discounts.EmployeeDiscount
    }
}

class HourlyMaint : Employee {
    init(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipCode: String?) {
        super.init(areas: [ParkAreas.KitchenAreas, ParkAreas.RideAreas, ParkAreas.RideControlAreas, ParkAreas.MaintenenceAreas])
        self.discounts = Discounts.EmployeeDiscount
        self.entrantType = Entrants.Employee
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.state = state
    }
}

class HourlyRide : Employee {
    init(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipCode: String?) {
        super.init(areas: [ParkAreas.RideAreas, ParkAreas.RideControlAreas])
        self.discounts = Discounts.EmployeeDiscount
        self.entrantType = Entrants.Employee
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.state = state
    }
}

class HourlyFood : Employee {
    init(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipCode: String?) {
        super.init(areas: [ParkAreas.RideAreas, ParkAreas.KitchenAreas])
        self.discounts = Discounts.EmployeeDiscount
        self.entrantType = Entrants.Employee
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.state = state
    }
}

class Manager : Employee {
    init(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipCode: String?) {
        super.init(areas: [ParkAreas.RideAreas, ParkAreas.RideControlAreas, ParkAreas.KitchenAreas, ParkAreas.MaintenenceAreas, ParkAreas.OfficeAreas])
        self.discounts = Discounts.ManagerDiscount
        self.entrantType = Entrants.Employee
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.zipCode = zipCode
        self.state = state
    }
}



//MARK: ENUMS

enum Entrants {
    case Classic
    case Vip
    case Child
    case Employee
}

enum Employees {
    case HourlyMaint
    case HourlyFood
    case HourlyRide
}

enum rideAccess {
    case skipLines
    case allRides
}

enum ParkAreas {
    case RideAreas
    case MaintenenceAreas
    case KitchenAreas
    case OfficeAreas
    case RideControlAreas
}

enum Discounts {
    case VipDiscount
    case EmployeeDiscount
    case ManagerDiscount
}


//MARK: Protocols

protocol CanEnter {
    var entrantType: Entrants { get }
    var discounts: Discounts? { get }
    var areas: [ParkAreas] { get }
}

protocol isChild {
    var Age: Int { get }
}

protocol isEmployee {
    var firstName: String? { get }
    var lastName: String? { get }
    var city: String? { get }
    var address: String? { get }
    var zipCode: String? { get }
    var state: String? { get }
}
