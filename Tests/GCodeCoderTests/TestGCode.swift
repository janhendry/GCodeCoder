//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//

import XCTest
@testable import GCodeCoder

final class TestGCode: XCTestCase {
    
    func testAllParser(){
        let parser = GCodeParser()
        let example = Examples()
        for item in example.parsing {
            let result: [(Character,String?)] = parser.parseLine(item.0)
        
            XCTAssertTrue(item.1 .count == result.count)
            
            for i in 0..<result.count{
                XCTAssertEqual(result[i].0, item.1[i].0)
                XCTAssertEqual(result[i].1, item.1[i].1)
            }
        }
    }
    
    
    func testGCodeSInit(){
        let example = Examples()
        for item in example.parsing {
            do {
                let gcodeS = try GCode(item.1)
                XCTAssertEqual(gcodeS, item.2)
            } catch {
                XCTFail(error.localizedDescription)
            }
        }
    }
    
    func testDuplicated(){
        XCTAssertTrue( GCodeDecoder.isSbDuplicated([("A",nil),("B",nil),("C",nil),("A",nil)]))
        XCTAssertFalse( GCodeDecoder.isSbDuplicated([("A",nil),("B",nil),("C",nil),("D",nil)]))
        XCTAssertFalse( GCodeDecoder.isSbDuplicated([]))
    }
    
    func testParserFile(){
        let parser = GCodeParser()
        for line in Examples().data1.split(separator: "\n"){
            _ = parser.parseLine(String(line))
        }
    }
    
    func testGCodeS(){
        
        let paraList: [(Character,String?)] = [("G","1"),("X","73.65")]
        let gcode = GCode(letter: .G01,x: "73.65")
        
        guard let g = try? GCode(paraList) else {
            XCTFail("Decoding Fail")
            return
        }
        XCTAssertTrue(gcode == g)
    }
    
    func testDecoder() throws {
        do {
            _ = try GCodeDecoder.decode(data: Examples().data1)
        } catch {
            XCTFail()
        }
    }
    
}

