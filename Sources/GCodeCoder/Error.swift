//
//  Error.swift
//
//
//  Created by Jan Anstipp on 26.09.21.
//

enum GCodeDecoderError: Error {
    case findDuplicated(String)
    case castError(from: Letter, to: Letter)
}

enum LetterError: Error {
    case Incorrect(Character, String)
    case missingLetter(String)

    var description: String {
        switch self {
        case let .Incorrect(header, number):
            return "Fail LetterType:\(header)\(number) is incorrect!"
        case let .missingLetter(line):
            return "Missing Letter in \(line)"
        }
    }
}
