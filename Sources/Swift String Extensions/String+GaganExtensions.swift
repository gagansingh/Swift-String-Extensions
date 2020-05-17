//
//  String+GaganExtensions.swift
//
//  Created by Gagan Singh on 5/17/20.
//

import Foundation

enum GaganExtensionsError: Error {
    case runtimeError(String)
}

extension String {
    func replacingCharacters(inSet set: CharacterSet, with replacement: Character) -> String {
        let allowedCharacters = set 
        let newString = self.map { (c) -> Character in
            let characterIsNotAllowed = { !allowedCharacters.contains($0) }
            let charactersUnicodeScalarsContainsNotAllowed = c.unicodeScalars.contains(where: characterIsNotAllowed )
            return charactersUnicodeScalarsContainsNotAllowed ? replacement : c
        }
        return String(newString)
    }

    func removingCharacters(notInSet: CharacterSet, replacedBy: String = "") -> String {
        let seperated = self.components(separatedBy: notInSet.inverted)
        return seperated.joined(separator: replacedBy)
    }
}
