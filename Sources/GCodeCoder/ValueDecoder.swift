//
//  ValueDecoder.swift
//
//
//  Created by Jan Anstipp on 28.09.21.
//

class ValueDecoder {
    static func decode(_ type: Bool.Type, _ element: String?) throws -> Bool? {
        if let element = element {
            guard let value = Bool(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Bool.Type, _ element: String) throws -> Bool {
        guard let value = Bool(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_: String.Type, _ element: String?) throws -> String? {
        element
    }

    static func decode(_: String.Type, _ element: String) throws -> String {
        element
    }

    static func decode(_ type: Int.Type, _ element: String?) throws -> Int? {
        if let element = element {
            guard let value = Int(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Int.Type, _ element: String) throws -> Int {
        guard let value = Int(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: Int8.Type, _ element: String?) throws -> Int8? {
        if let element = element {
            guard let value = Int8(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Int8.Type, _ element: String) throws -> Int8 {
        guard let value = Int8(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: Int16.Type, _ element: String?) throws -> Int16? {
        if let element = element {
            guard let value = Int16(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Int16.Type, _ element: String) throws -> Int16 {
        guard let value = Int16(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: Int32.Type, _ element: String?) throws -> Int32? {
        if let element = element {
            guard let value = Int32(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Int32.Type, _ element: String) throws -> Int32 {
        guard let value = Int32(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: Int64.Type, _ element: String?) throws -> Int64? {
        if let element = element {
            guard let value = Int64(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Int64.Type, _ element: String) throws -> Int64 {
        guard let value = Int64(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: UInt.Type, _ element: String?) throws -> UInt? {
        if let element = element {
            guard let value = UInt(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: UInt.Type, _ element: String) throws -> UInt {
        guard let value = UInt(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: UInt8.Type, _ element: String?) throws -> UInt8? {
        if let element = element {
            guard let value = UInt8(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: UInt8.Type, _ element: String) throws -> UInt8 {
        guard let value = UInt8(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: UInt16.Type, _ element: String?) throws -> UInt16? {
        if let element = element {
            guard let value = UInt16(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: UInt16.Type, _ element: String) throws -> UInt16 {
        guard let value = UInt16(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: UInt32.Type, _ element: String?) throws -> UInt32? {
        if let element = element {
            guard let value = UInt32(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: UInt32.Type, _ element: String) throws -> UInt32 {
        guard let value = UInt32(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: UInt64.Type, _ element: String?) throws -> UInt64? {
        if let element = element {
            guard let value = UInt64(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: UInt64.Type, _ element: String) throws -> UInt64 {
        guard let value = UInt64(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: Double.Type, _ element: String?) throws -> Double? {
        if let element = element {
            guard let value = Double(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Double.Type, _ element: String) throws -> Double {
        guard let value = Double(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }

    static func decode(_ type: Float.Type, _ element: String?) throws -> Float? {
        if let element = element {
            guard let value = Float(element) else {
                throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
            }
            return value
        }
        return nil
    }

    static func decode(_ type: Float.Type, _ element: String) throws -> Float {
        guard let value = Float(element) else {
            throw ValueDecodingError.invalidCast(type: String(describing: type), element: element)
        }
        return value
    }
}

enum ValueDecodingError: Error {
    case invadlideType(type: String, element: String)
    case invalidCast(type: String, element: String)
    case missingValue(type: String)
}
