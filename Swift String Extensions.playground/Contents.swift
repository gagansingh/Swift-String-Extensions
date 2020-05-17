import UIKit

enum ReplacingNonLettersError: Error {
    case runtimeError(String)
}

extension String {
    func replacingNonLettersWith(_ replacement: String) throws -> String {
        guard self.count == 1 else { throw ReplacingNonLettersError.runtimeError("replacement string much be one character long") }
        let c = Character(replacement)
        return replacingNonLettersWith(c)
    }

    func replacingNonLettersWith(_ replacement: Character) -> String {
        let allowedCharacters = CharacterSet.letters
        let newString = self.map { (c) -> Character in
            let characterIsNotAllowed = { !allowedCharacters.contains($0) }
            let charactersUnicodeScalarsContainsNotAllowed = c.unicodeScalars.contains(where: characterIsNotAllowed )
            return charactersUnicodeScalarsContainsNotAllowed ? replacement : c
        }
        return String(newString)
    }
}

var s = "thx!cool"
do {
    try s.replacingNonLettersWith("_d")
} catch let error {
    print(error)
}

print("done")
