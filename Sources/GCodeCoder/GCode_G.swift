//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//


public struct GCode_G01: GCodeDecodeable {
    let n: Int?
    let letter: Letter = .G01
    
    var e: Float?
    var f: Float?
    var s: Float?
    var x: Float?
    var y: Float?
    var z: Float?
    
    public init(gcode: GCode) throws {
       
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        
        e = gcode.e == nil ? nil : try Decoder.decode( Float.self, gcode.e!)
        f = gcode.f == nil ? nil : try Decoder.decode(Float.self, gcode.f!)
        s = gcode.s == nil ? nil :try Decoder.decode(Float.self,gcode.s!)
        
        x = gcode.x == nil ? nil :try Decoder.decode(Float.self,gcode.x!)
        y = gcode.y == nil ? nil :try Decoder.decode(Float.self,gcode.y!)
        z = gcode.z == nil ? nil :try Decoder.decode(Float.self,gcode.z!)
        
    }
}


//Dwell pauses the command queue and waits for a period of time.
//p: time in ms
//s: time in s
public struct GCode_G04: GCodeDecodeable {
    let letter: Letter = .G04
    var n: Int? = nil
    var p: Float? = nil
    var s: Float? = nil
        
    public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        p = gcode.p == nil ? nil :try Decoder.decode(Float.self,gcode.p!)
        s = gcode.s == nil ? nil :try Decoder.decode(Float.self,gcode.s!)
    }
}



