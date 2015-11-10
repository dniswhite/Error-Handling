//
//  FormValidationModel.swift
//  Error Handling
//
//  Created by Dennis White on 10/30/15.
//  Copyright © 2015 dniswhite. All rights reserved.
//

class FormValidationModel {
    var fieldOneText: String?
    var fieldTwoText: String?
    var fieldThreeText: String?
    var fieldFourText: String?
    
    init (fieldOne: String, fieldTwo: String, fieldThree: String, fieldFour: String) {
        self.fieldOneText = fieldOne
        self.fieldTwoText = fieldTwo
        self.fieldThreeText = fieldThree
        self.fieldFourText = fieldFour
    }
    
    func hasEmptyFields () -> Bool {
        var result: Bool = false
        
        if (!fieldOneText!.isEmpty && !fieldTwoText!.isEmpty && !fieldThreeText!.isEmpty && !fieldFourText!.isEmpty) {
            result = true
        }
        
        return result
    }
    
    func validateForm() throws -> Bool  {
        guard hasEmptyFields() else {
            throw FormValidationErrors.emptyField
        }
        
        guard validationFieldOne() else {
            throw FormValidationErrors.FieldOne
        }
        
        guard validationFieldTwo() else {
            throw FormValidationErrors.FieldTwo
        }
        
        guard validationFieldThree() else {
            throw FormValidationErrors.FieldThree
        }
        
        guard validationFieldFour() else {
            throw FormValidationErrors.FieldFour
        }
        
        return true
    }
    
    func validationFieldOne() -> Bool {
        if fieldOneText?.characters.count >= 1 {
            return true
        }
        
        return false
    }
    
    func validationFieldTwo() -> Bool {
        if fieldTwoText?.characters.count >= 2 {
            return true
        }
        
        return false
    }
    
    func validationFieldThree() -> Bool {
        if fieldThreeText?.characters.count >= 3 {
            return true
        }
        
        return false
    }
    
    func validationFieldFour() -> Bool {
        if fieldFourText?.characters.count >= 4 {
            return true
        }
        
        return false
    }
}