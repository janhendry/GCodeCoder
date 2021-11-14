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
    public let letter: Letter = .M1
    public var n: Int?
    public var p: Float?
    public var s: Float?

    public init(n: Int? = nil, p: Float? = nil, s: Float? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
        
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
    public let letter: Letter = .M280
    public var n: Int?
    public var p: Int
    public var s: Float?

     
    public init(n: Int? = nil, p: Int, s: Float? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
    
    public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        
        guard let pV = gcode.p else {
            throw DecodingError.missingValue(type: String("M280 need p Value"))
        }
        p = try Decoder.decode(Int.self, pV)
        s = gcode.s == nil ? nil : try Decoder.decode(Float.self, gcode.s!)
    }
    
}
