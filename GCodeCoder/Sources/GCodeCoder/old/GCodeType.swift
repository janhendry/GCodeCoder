//
//  File.swift
//
//
//  Created by Jan Anstipp on 28.09.21.
//
//
//
//protocol GCodeType{
//    associatedtype X
//    associatedtype Y
//    associatedtype Z
//    //...
//    
//    var x: X? { get set }
//    var y: Y? { get set }
//    var z: Z? { get set }
//    //...
//    
//}
//
//extension GCodeType{
//    
//    init(gcode: GCodeS) throws{
//        
//        x = try Self.decode(type: X.self, value: gcode.x)
//        y = try Self.decode(type: Y.self, value: gcode.y)
//        z = try Self.decode(type: Z.self, value: gcode.z)
//        //...
//    }
//    
//    static private func decode<T>(type: T.Type,value: String?) throws -> T?{
//        guard let value = value else { return nil}
//        return try Decoder.decode(type, element: value)
//    }
//}
//
//struct GCodeTypeExample: GCodeType{
//    var x: Int?
//    var y: Double?
//    var z: Float?
//
//    typealias X = Int
//    typealias Y = Double
//    typealias Z = Float
//
//}
