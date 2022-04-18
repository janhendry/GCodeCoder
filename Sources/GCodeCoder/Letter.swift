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
    case G00    = "G0"
    case G01    = "G1"
    case G04    = "G4"
    case G06    = "G6"
    case G92    = "G92"
    case M1     = "M1"
    case M280   = "M280"
    
    var raw: (LetterType, Int?){
        switch self {
            case .G00:  return (.G, 0)
            case .G01:  return (.G, 1)
            case .G04:  return (.G, 4)
            case .G06:  return (.G, 6)
            case .G92:  return (.G, 92)
            case .M1:   return (.M, 1)
            case .M280: return (.M, 280)
        }
    }
    
    
    init(header: Character, number: Int) throws {
        switch header {
            case "G":
                switch number {
                    case 0: self    = .G00
                    case 1: self    = .G01
                    case 4: self    = .G04
                    case 6: self    = .G06
                    case 92: self    = .G92
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
