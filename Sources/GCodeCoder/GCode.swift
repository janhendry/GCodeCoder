//
//  File.swift
//  
//
//  Created by Jan Anstipp on 14.08.21.

public class GCode: Equatable, Codable {
    public var letter: Letter
    public var n: Int? = nil
    public var x: String? = nil
    public var y: String? = nil
    public var z: String? = nil
    public var p: String? = nil
    public var s: String? = nil
    public var r: String? = nil
    public var f: String? = nil
    public var e: String? = nil
    
    public init(letter: Letter, n: Int? = nil, x: String? = nil, y: String? = nil, z: String? = nil, p: String? = nil, s : String? = nil, f: String? = nil, e: String? = nil ) {
        self.letter = letter
        self.n = n
        self.x = x
        self.y = y
        self.z = z
        self.p = p
        self.s = s
        self.f = f
        self.e = e
    }
    
    init(_ list:[(Character,String?)]) throws {
        letter = .G01
        
        var matchLetter = false
        for item in list {
            let header = Header(rawValue: item.0)
            
            switch header {
            case .none:
                throw LetterError.Incorrect(item.0, item.1 ?? "")
            case .X:
                x = item.1
            case .Y:
                y = item.1
            case .Z:
                z = item.1
            case .E:
                e = item.1
            case .F:
                f = item.1
            case .P:
                p = item.1
            case .S:
                s = item.1
            case .R:
                r = item.1
            case .G, .M:
                guard let str = item.1, let number = Int(str) else { throw LetterError.Incorrect(item.0, item.1 ?? "") }
                letter = try Letter(header: item.0, number: number )
                matchLetter = true
            }
        }
        if !matchLetter {
            throw LetterError.missingLetter(
                list
                    .map{"\($0)\( $1 ?? "")"}
                    .joined(separator: " ") )
            
        }
    }
    
    public static func ==(lhs: GCode, rhs: GCode) -> Bool {
        return (lhs.letter == rhs.letter && lhs.n == rhs.n && lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z && lhs.p == rhs.p && lhs.s == rhs.s && lhs.f == rhs.f && lhs.e == rhs.e)
    }
    
}



