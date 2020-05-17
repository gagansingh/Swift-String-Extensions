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
    func replacingNonLettersWith(_ replacement: String) throws -> String {
        guard replacement.count == 1 else { throw GaganExtensionsError.runtimeError("replacement string much be one character long") }
        let c = Character(replacement)
        return replacingNonLettersWith(c)
    }

    func replacingNonLettersWith(_ replacement: Character) -> String {
        return replacingCharacters(inSet: CharacterSet.letters, with: replacement)
    }

    func replacingCharacters(inSet set: CharacterSet, with replacement: String) throws -> String {
        guard replacement.count == 1 else { throw GaganExtensionsError.runtimeError("replacement string much be one character long") }
        let c = Character(replacement)
        return replacingCharacters(inSet: set, with: c)
    }

    func replacingCharacters(inSet set: CharacterSet, with replacement: Character) -> String {
        let allowedCharacters = set 
        let newString = self.map { (c) -> Character in
            let characterIsNotAllowed = { !allowedCharacters.contains($0) }
            let charactersUnicodeScalarsContainsNotAllowed = c.unicodeScalars.contains(where: characterIsNotAllowed )
            return charactersUnicodeScalarsContainsNotAllowed ? replacement : c
        }
        return String(newString)
    }
}
