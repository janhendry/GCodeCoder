//
//  File.swift
//  
//
//  Created by Jan Anstipp on 28.09.21.
//

class Decoder{
    
    
    static func decode<T>(_ type: T.Type,_ element: String) throws -> T{
        throw DecodingError.invadlideType(type: String(describing: type), element: element)
    }
           
    static func decode(_ type: Bool.Type,_ element: String) throws -> Bool {
        guard let value = Bool(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: String.Type,_ element: String) throws -> String {
        return element
    }
           
    static func decode(_ type: Int.Type,_ element: String) throws -> Int {
        guard let value = Int(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: Int8.Type,_ element: String) throws -> Int8 {
        guard let value = Int8(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: Int16.Type,_ element: String) throws -> Int16 {
        guard let value = Int16(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: Int32.Type,_ element: String) throws -> Int32 {
        guard let value = Int32(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
            
        }
        return value
    }
           
    static func decode(_ type: Int64.Type,_ element: String) throws -> Int64 {
        guard let value = Int64(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: UInt.Type,_ element: String) throws -> UInt {
        guard let value = UInt(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: UInt8.Type,_ element: String) throws -> UInt8 {
        guard let value = UInt8(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: UInt16.Type,_ element: String) throws -> UInt16 {
        guard let value = UInt16(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: UInt32.Type,_ element: String) throws -> UInt32 {
        guard let value = UInt32(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: UInt64.Type,_ element: String) throws -> UInt64 {
        guard let value = UInt64(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: Double.Type,_ element: String) throws -> Double {
        guard let value = Double(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
    static func decode(_ type: Float.Type,_ element: String) throws -> Float {
        guard let value = Float(element) else {
            throw DecodingError.invadlideCast(type: String(describing: type), element: element )
        }
        return value
    }
           
}


enum DecodingError: Error {
    case invadlideType(type: String, element: String)
    case invadlideCast(type: String, element: String)
    case missingValue(type: String)
}
