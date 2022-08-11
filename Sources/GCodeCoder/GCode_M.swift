//
//  File.swift
//  
//
//  Created by Jan Anstipp on 28.09.21.
//

//Pause after the last movement and wait for the user to continue
//p: time in ms
//s: time in s
public class GCode_M01: GCodeDecodeable {
    public let letter: Letter = .M1
    public var n: Int?
    public var p: Double?
    public var s: Double?

    public init(n: Int? = nil, p: Double? = nil, s: Double? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
        
    required public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: .M1) }
        n = gcode.n
        p = try Decoder.decode(Double.self,gcode.p)
        s = try Decoder.decode(Double.self,gcode.s)
    }
}



//Set or get the position of a servo.
//P: Servo index to set or get
//S: Servo position to set. Omit to read the current position.
public class GCode_M280: GCodeDecodeable {
    public let letter: Letter = .M280
    public var n: Int?
    public var p: Int
    public var s: Int?

     
    public init(n: Int? = nil, p: Int, s: Int? = nil){
        self.n = n
        self.p = p
        self.s = s
    }
    
    required public init(gcode: GCode) throws {
        if gcode.letter != letter { throw GCodeDecoderError.castError(from: gcode.letter, to: letter) }
        n = gcode.n
        
        guard let pV = gcode.p else {
            throw DecodingError.missingValue(type: String("M280 need p Value"))
        }
        p = try Decoder.decode(Int.self, pV)
        s = try Decoder.decode(Int.self, gcode.s)
    }
    
}
