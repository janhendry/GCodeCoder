//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//

public class GCode_G00: GCodeDecodeable {
    public let n: Int?
    public let letter: Letter = .G00
    public var e: Double?
    public var f: Double?
    public var s: Double?
    public var x: Double?
    public var y: Double?
    public var z: Double?
    
    public init(n: Int? = nil, e: Double? = nil ,f: Double?  = nil ,s: Double?  = nil ,x: Double?  = nil ,y: Double?  = nil ,z: Double? = nil){
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
        
        e = try Decoder.decode(Double.self,gcode.e)
        f = try Decoder.decode(Double.self,gcode.f)
        s = try Decoder.decode(Double.self,gcode.s)
        
        x = try Decoder.decode(Double.self,gcode.x)
        y = try Decoder.decode(Double.self,gcode.y)
        z = try Decoder.decode(Double.self,gcode.z)
        
    }
}

public class GCode_G01: GCodeDecodeable {
    public let n: Int?
    public let letter: Letter = .G01
    
    public var e: Double?
    public var f: Double?
    public var s: Double?
    public var r: Double?
    public var x: Double?
    public var y: Double?
    public var z: Double?
    
    public init(n: Int? = nil, e: Double? = nil ,f: Double?  = nil ,s: Double?  = nil,r: Double?  = nil ,x: Double?  = nil ,y: Double?  = nil ,z: Double? = nil){
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
        
        e = try Decoder.decode(Double.self,gcode.e)
        f = try Decoder.decode(Double.self,gcode.f)
        s = try Decoder.decode(Double.self,gcode.s)
        r = try Decoder.decode(Double.self,gcode.r)
        
        x = try Decoder.decode(Double.self,gcode.x)
        y = try Decoder.decode(Double.self,gcode.y)
        z = try Decoder.decode(Double.self,gcode.z)
        
    }
}

//Dwell pauses the command queue and waits for a period of time.
//p: time in ms
//s: time in s
public class GCode_G04: GCodeDecodeable {
    public let letter: Letter = .G04
    public var n: Int? = nil
    public var p: Double? = nil
    public var s: Double? = nil
        
    public init(n: Int? = nil, p: Double? = nil , s: Double? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
    
    required public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        p = try Decoder.decode(Double.self,gcode.p)
        s = try Decoder.decode(Double.self,gcode.s)
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

//G92 - Set the current position.
public class GCode_G92: GCodeDecodeable {
    public let letter: Letter = .G92
    public var n: Int? = nil
    public var x: Double?
    public var y: Double?
    public var z: Double?
    
    public init(n: Int? = nil, x: Double?  = nil ,y: Double?  = nil ,z: Double? = nil){
        self.n = n
        self.x = x
        self.y = y
        self.z = z
    }
    
    required public init(gcode: GCode) throws {
       
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        x = try Decoder.decode(Double.self,gcode.x)
        y = try Decoder.decode(Double.self,gcode.y)
        z = try Decoder.decode(Double.self,gcode.z)
    }
}
