//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//


public struct GCode_G01: GCodeDecodeable {
    public let n: Int?
    public let letter: Letter = .G01
    
    public var e: Float?
    public var f: Float?
    public var s: Float?
    public var x: Float?
    public var y: Float?
    public var z: Float?
    
    public init(n: Int? = nil, e: Float? = nil ,f: Float?  = nil ,s: Float?  = nil ,x: Float?  = nil ,y: Float?  = nil ,z: Float? = nil){
        self.n = n
        self.e = e
        self.f = f
        self.s = s
        self.x = x
        self.y = y
        self.z = z
    }
    
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
    public let letter: Letter = .G04
    public var n: Int? = nil
    public var p: Float? = nil
    public var s: Float? = nil
        
    public init(n: Int? = nil, p: Float? = nil , s: Float? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
    
    public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        p = gcode.p == nil ? nil :try Decoder.decode(Float.self,gcode.p!)
        s = gcode.s == nil ? nil :try Decoder.decode(Float.self,gcode.s!)
    }
}

//G6 - Direct Stepper Move
public struct GCode_G06: GCodeDecodeable {
    public let letter: Letter = .G06
    public var n: Int? = nil
    public var x: Int?
    public var y: Int?
    public var z: Int?
    
    public init(n: Int? = nil, x: Int?  = nil ,y: Int?  = nil ,z: Int? = nil){
        self.n = n
        self.x = x
        self.y = y
        self.z = z
    }
    
    public init(gcode: GCode) throws {
       
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        x = gcode.x == nil ? nil :try Decoder.decode(Int.self,gcode.x!)
        y = gcode.y == nil ? nil :try Decoder.decode(Int.self,gcode.y!)
        z = gcode.z == nil ? nil :try Decoder.decode(Int.self,gcode.z!)
    }
}
