//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//

enum GCodeDecoderError: Error{
    case findDuplicated(String)
    case castError(from: Letter, to: Letter)
}


enum LetterError: Error{
    case Incorrect(Character,String)
    case missingLetter(String)
    
    var description: String{
        switch self {
        case .Incorrect(let header, let number):
            return "Fail LetterType:\(header)\(number) is incorrect!"
        case .missingLetter(let line):
            return "Missing Letter in \(line)"
        }
        
        
    }
}
