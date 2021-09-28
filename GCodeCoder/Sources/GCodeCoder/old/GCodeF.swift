//
//  File.swift
//
//
//  Created by Simone Stürenburg on 27.09.21.
//
//
//
//struct GCodeF: GCodeDecodeable {
//    let letter: Letter
//    var n: Int? = nil
//    var x: Float? = nil
//    var y: Float? = nil
//    var z: Float? = nil
//    var p: Float? = nil
//    var s: Float? = nil
//    var f: Float? = nil
//    var e: Float? = nil
//
//    init( gcode: GCode) throws {
//        letter = gcode.letter
//        n = gcode.n
//        x = try Decoder.decode(type:Float.self, value: gcode.x)
//        y = try Decoder.decode(type:Float.self, value: gcode.y)
//        z = try Decoder.decode(type:Float.self, value: gcode.z)
//        p = try Decoder.decode(type:Float.self, value: gcode.p)
//        s = try Decoder.decode(type:Float.self, value: gcode.s)
//        f = try Decoder.decode(type:Float.self, value: gcode.f)
//        e = try Decoder.decode(type:Float.self, value: gcode.e)
//    }
//}
