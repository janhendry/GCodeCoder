//
//  File.swift
//  
//
//  Created by Jan Anstipp on 28.09.21.
//

//Pause after the last movement and wait for the user to continue
//p: time in ms
//s: time in s
public struct GCode_M01: GCodeDecodeable {
    let letter: Letter = .M1
    var n: Int? = nil
    var p: Float? = nil
    var s: Float? = nil

        
    public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: .M1) }
        n = gcode.n
        p = gcode.p == nil ? nil : try Decoder.decode(Float.self,gcode.p!)
        s = gcode.s == nil ? nil :try Decoder.decode(Float.self,gcode.s!)
    }
    
}

//Set or get the position of a servo.
//P: Servo index to set or get
//S: Servo position to set. Omit to read the current position.
public struct GCode_M280: GCodeDecodeable {
    let letter: Letter = .M280
    var n: Int? = nil
    var p: Float? = nil
    var s: Float? = nil

        
    public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        p = gcode.p == nil ? nil :try Decoder.decode(Float.self, gcode.p!)
        s = gcode.s == nil ? nil : try Decoder.decode(Float.self, gcode.s!)
    }
    
}
