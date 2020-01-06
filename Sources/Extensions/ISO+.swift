//
//  ISO+.swift
//
//  Created by Tibor Leon Hahne on 17.08.19.
//  Copyright © 2019 Tibor Leon Hahne. All rights reserved.
//

import Foundation

public extension ISO8601DateFormatter {
    
    convenience init(_ formatOptions: Options, timeZone: TimeZone = TimeZone(secondsFromGMT: 0)!) {
        self.init()
        self.formatOptions = formatOptions
        self.timeZone = timeZone
    }
    
}
 
public extension Formatter {
    
    static let iso8601 = ISO8601DateFormatter([.withInternetDateTime, .withFractionalSeconds])
    
}

public extension Date {
    
    var iso8601: String {
        return Formatter.iso8601.string(from: self)
    }
    
}

public extension String {
    
    var iso8601: Date? {
        return Formatter.iso8601.date(from: self)
    }
    
}
