//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//

public class GCode_G00: GCodeDecodeable {
    public let n: Int?
    public let letter: Letter = .G00
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
    
    required public init(gcode: GCode) throws {
       
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        
        e = try Decoder.decode(Float.self,gcode.e)
        f = try Decoder.decode(Float.self,gcode.f)
        s = try Decoder.decode(Float.self,gcode.s)
        
        x = try Decoder.decode(Float.self,gcode.x)
        y = try Decoder.decode(Float.self,gcode.y)
        z = try Decoder.decode(Float.self,gcode.z)
        
    }
}

public class GCode_G01: GCodeDecodeable {
    public let n: Int?
    public let letter: Letter = .G01
    
    public var e: Float?
    public var f: Float?
    public var s: Float?
    public var r: Float?
    public var x: Float?
    public var y: Float?
    public var z: Float?
    
    public init(n: Int? = nil, e: Float? = nil ,f: Float?  = nil ,s: Float?  = nil,r: Float?  = nil ,x: Float?  = nil ,y: Float?  = nil ,z: Float? = nil){
        self.n = n
        self.e = e
        self.f = f
        self.s = s
        self.r = r
        self.x = x
        self.y = y
        self.z = z
    }
    
    required public init(gcode: GCode) throws {
       
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        
        e = try Decoder.decode(Float.self,gcode.e)
        f = try Decoder.decode(Float.self,gcode.f)
        s = try Decoder.decode(Float.self,gcode.s)
        r = try Decoder.decode(Float.self,gcode.r)
        
        x = try Decoder.decode(Float.self,gcode.x)
        y = try Decoder.decode(Float.self,gcode.y)
        z = try Decoder.decode(Float.self,gcode.z)
        
    }
}

//Dwell pauses the command queue and waits for a period of time.
//p: time in ms
//s: time in s
public class GCode_G04: GCodeDecodeable {
    public let letter: Letter = .G04
    public var n: Int? = nil
    public var p: Float? = nil
    public var s: Float? = nil
        
    public init(n: Int? = nil, p: Float? = nil , s: Float? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
    
    required public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        p = try Decoder.decode(Float.self,gcode.p)
        s = try Decoder.decode(Float.self,gcode.s)
    }
}

//G6 - Direct Stepper Move
public class GCode_G06: GCodeDecodeable {
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
    
    required public init(gcode: GCode) throws {
       
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        x = try Decoder.decode(Int.self,gcode.x)
        y = try Decoder.decode(Int.self,gcode.y)
        z = try Decoder.decode(Int.self,gcode.z)
    }
}
