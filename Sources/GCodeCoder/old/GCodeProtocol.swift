//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//
//
//protocol GCodeP: Codable {
//    var letter: Letter { get }
//    var n: Int? { get }
//   
//    init?(_ gcode: GCode) throws
//}
//
//extension GCodeP{
//    
//    func toFloat(_ str: String?) throws -> Float?{
//        guard let str = str else { return nil }
//        guard let float = Float(str) else {  throw ParsingFormatError.FloatError(str) }
//        return float
//    }
//    
//    func toDobble(_ str: String?) throws -> Float?{
//        guard let str = str else { return nil }
//        guard let float = Float(str) else {  throw ParsingFormatError.FloatError(str) }
//        return float
//    }
//}
//
