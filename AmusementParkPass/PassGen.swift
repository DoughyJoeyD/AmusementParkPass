//
//  PassGen.swift
//  AmusementParkPass
//
//  Created by Joey Devlin on 8/11/18.
//  Copyright © 2018 Joey. All rights reserved.
//

import Foundation

protocol VaildPass {
    
    var isVaild: Bool { get set }
    var passHolder: Entrant { get set }
}

protocol VaildEmpPass {
    var isVaild: Bool { get set }
    var passHolder: Employee { get set }
}


class RegPass: VaildPass {
    var isVaild: Bool = false
    var passHolder: Entrant
    
    init(passHolder: Entrant){
        self.passHolder = passHolder
    }
    
    func validPass() throws {
        if self.passHolder.entrantType == Entrants.Child {
            let pass: Child = passHolder as! Child
            if pass.Age > 5 {
                print("Sorry mate youre to old")
                self.isVaild = false
            }
            if pass.dateOfBirth == nil {
                throw InfoErrors.missingDob
            }
            if pass.Age <= 5 {
                print("Alright Junior, come on in")
                self.isVaild = true
            }
        
        }else{
            print("Pass is Valid")
            self.isVaild = true
        }
    }
}


class EmployeePass: VaildEmpPass {

    var isVaild: Bool = false
    var passHolder: Employee
    
    init(passHolder: Employee){
        self.passHolder = passHolder
    }
    
    func vaildPass() throws {
        if passHolder.firstName == nil && passHolder.lastName == nil && passHolder.address == nil && passHolder.city == nil && passHolder.state == nil && passHolder.zipCode == nil {
            throw InfoErrors.AllInfoMissing
        }
        if passHolder.firstName == nil {
            throw InfoErrors.firstName
        }
        if passHolder.lastName == nil {
            throw InfoErrors.lastName
        }
        if passHolder.address == nil {
            throw InfoErrors.address
        }
        if passHolder.city == nil {
            throw InfoErrors.city
        }
        if passHolder.state == nil {
            throw InfoErrors.state
        }
        if passHolder.zipCode == nil {
            throw InfoErrors.zipCode
        }else {
            print("Valid Pass")
            self.isVaild = true
        }
    }
    
}

enum InfoErrors: Error {
    case AllInfoMissing
    case firstName
    case lastName
    case address
    case zipCode
    case city
    case state
    case missingDob
}

extension InfoErrors: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .AllInfoMissing: return NSLocalizedString("Missing Everything... Come on man", comment: "Missing Everythin... Come on man")
        case .firstName: return NSLocalizedString("Missing First Name entry", comment: "Missing First Name")
        case .lastName: return NSLocalizedString("Missing Last Name entry", comment: "Missing Last Name")
        case .address: return NSLocalizedString("Missing Address entry", comment: "Missing Address")
        case .zipCode: return NSLocalizedString("Missing ZipCode entry", comment: "Missing ZipCode")
        case .state: return NSLocalizedString("Missing State entry", comment: "Missing State")
        case .city: return NSLocalizedString("Missing City entry", comment: "Missing City")
        case .missingDob: return NSLocalizedString("Missing Date of Birth entry", comment: "Missing Date Of Birth")
        }
    }
}
