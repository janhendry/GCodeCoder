//
//  File.swift
//  
//
//  Created by Jan Anstipp on 26.09.21.
//

class GCodeParser{
    
    private var line: String = ""
    private var i = 0
    private var c: [String.Element] = []
    private var parameters: [Header: String] = [:]
    
    func parseLine(_ value: String) -> [(Character, String?)] {
        line = value
        c = line.uppercased().map{$0}
        i = 0
        var params: [(Character, String?)] = []
        
        while !isEnd() {
            let char = c[i]
            i+=1
            let startIndex = i
            while i<c.count && c[i] != " " && c[i] != ";" { i+=1 }
            let value = startIndex == i ? nil : String(c[startIndex..<i])
            params.append((char, value))
        }
        return params
    }

    //Skip Space and retrun if line ending
    private func isEnd() -> Bool{
        while i < c.count && (c[i] == " " || c[i] == "\t" ){ i += 1 }
        return i>=c.count ||  c[i] == ";"
    }
}
