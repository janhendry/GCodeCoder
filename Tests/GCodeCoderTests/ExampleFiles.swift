//
//  File 2.swift
//  
//
//  Created by Simone Stürenburg on 26.09.21.
//

import XCTest
@testable import GCodeCoder

struct Examples {
    let parsing: [(String,[(Character, String?)],GCode)] = [
        (
            "G1 X73.6585   Y52.5437",
            [("G","1"),("X","73.6585"),("Y","52.5437")],
            GCode(letter: .G01,x: "73.6585", y: "52.5437")
        ),
        (
            "G1 X73.6585 \t Y52.5437",
            [("G","1"),("X","73.6585"), ("Y","52.5437")],
            GCode(letter: .G01,x: "73.6585", y: "52.5437")
        
        ),
        (
            "G1 X73.6585; Y52.5437",
            [("G","1"),("X","73.6585")],
            GCode(letter: .G01,x: "73.6585")
        ),
        (
            "G1 X73.6585  \t  \t ; Y52.5437",
            [("G","1"),("X","73.6585")],
            GCode(letter: .G01,x: "73.6585")
        ),
        
        (
            "G1 X73.6585; Y52.5437",
            [("G","1"),("X","73.6585")],
            GCode(letter: .G01,x: "73.6585")
        ),
        
        (
            "G1 X Y Z",
            [("G","1"),("X",nil),("Y",nil),("Z",nil)],
            GCode(letter: .G01)
        ),
        (
            "G1",
            [("G","1")],
            GCode(letter: .G01)
        )
        
    ]

    let data1 =
    """
    M280 P0 S60
    G1 X48.0339 Y26.9192
    G1 Z0.0000
    ; plunge
    G1 Z-3.1750 F127
    ; cut
    G1 X20.1780 Y54.7751
    G1 X45.8028 Y80.3996
    G1 X73.6585 Y52.5437
    G1 X48.0339 Y26.9192
    G1 X48.0339 Y26.9192
    ; Retract
    G1 Z2.5400 F2540
    """
    
    

}
