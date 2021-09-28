//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//

enum LetterType: Character {
    case G = "G"
    case M = "M"
}

public enum Letter: String, Codable{
    case G01    = "G1"
    case G04    = "G4"
    case M1     = "M1"
    case M280   = "M280"
    
    var raw: (LetterType, Int?){
        switch self {
        case .G01:  return (.G, 1)
        case .G04:  return (.G, 4)
        case .M1:   return (.M, 1)
        case .M280: return (.M, 280)
        }
    }
    
    
    init(header: Character, number: Int) throws {
        switch header {
        case "G":
            switch number {
            case 1: self    = .G01
            case 4: self    = .G04
            default:        throw LetterError.Incorrect(header,String(number))
            }
        case "M":
            switch number {
            case 0: self    = .M1
            case 1: self    = .M1
            case 280: self  = .M280
            default:        throw LetterError.Incorrect(header,String(number))
            }
        default: throw LetterError.Incorrect(header,String(number))
        }
    }
}
