//
//  FormValidationErrors.swift
//  Error Handling
//
//  Created by Dennis White on 10/30/15.
//  Copyright © 2015 dniswhite. All rights reserved.
//

enum FormValidationErrors: ErrorType, CustomStringConvertible {
    case emptyField
    case FieldOne
    case FieldTwo
    case FieldThree
    case FieldFour

    var description: String {
        switch self {
        case .emptyField: return "Empty fields encountered. \n Please complete all of the fields."
        case .FieldOne: return "Field one could not be validated. \n Please enter more than one character."
        case .FieldTwo: return "Field two could not be validated. \n Please enter more than two characters."
        case .FieldThree: return "Field three could not be validated. \n Please enter more than three characters."
        case .FieldFour: return "Field four could not be validated. \n Please enter more than four characters."
        }
    }
}
