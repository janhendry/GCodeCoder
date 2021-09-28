//
//  File.swift
//  
//
//  Created by Jan Anstipp on 25.09.21.
//

public protocol GCodeDecodeable{
    init(gcode: GCode) throws

}

open class GCodeDecoder {
    
    public static func decode(data: String) throws -> [GCodeDecodeable]{
        var data: Substring = Substring(data)
    
        var list: [GCodeDecodeable] = []
        
        while !data.isEmpty {
            let nextLine = nextLine(&data)
            
            if let gcode = try decode(line: nextLine) {
                list.append( gcode)
            }
        }
        return list
    }
    
    public static func decode(line: Substring) throws -> GCodeDecodeable?{
        let parser: GCodeParser = GCodeParser()
        let entryList: [(Character,String?)] = parser.parseLine(String(line))
        if entryList.isEmpty { return nil }
        
        if isSbDuplicated(entryList) {
            throw GCodeDecoderError.findDuplicated(String(line))
        }
        
        let gcode = try GCode(entryList)
        
        switch gcode.letter{
        case .G01:
            return try GCode_G01(gcode: gcode)
        case .G04:
            return try GCode_G04(gcode: gcode)
        case .M1:
            return try GCode_M01(gcode: gcode)
        case .M280:
            return try GCode_M280(gcode: gcode)
        }
    }
    
    static func isSbDuplicated(_ list: [(Character, String?)]) -> Bool{
        var charSet = Set<Character>()
        for entry in list {
            let x = charSet.insert(entry.0)
            if !x.inserted { return true }
        }
        return false
    }
    
    static private func nextLine(_ data: inout Substring) -> Substring {
        var line: Substring
        if let index = data.firstIndex(of: "\n"){
            line = data[data.startIndex..<index]
            while line.last == "\r" {
                line = line.dropLast()
            }
            data.removeSubrange(data.startIndex...index)
            
        }else{
            line = data
            data.removeAll()
        }
        
        return line
    }
}

