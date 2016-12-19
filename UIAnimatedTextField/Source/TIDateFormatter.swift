//
//  TIDateFormatter.swift
//
//  Copyright (c) 2016 Touch Instinct
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

class TIDateFormatter {
    
    fileprivate static let dateLongFormat  = "dd/MM/YYYY"
    fileprivate static let dateShortFormat = "dd/MM/YY"
    fileprivate static let monthDayFormat = "MMMM d"
    
    fileprivate let longDateFormatter = DateFormatter()
    fileprivate let shortDateFormatter = DateFormatter()
    fileprivate let monthDayDateFormatter = DateFormatter()
    
    private static let shared = TIDateFormatter()
    
    // MARK: Init
    
    private init() {
        longDateFormatter.dateFormat = TIDateFormatter.dateLongFormat
        shortDateFormatter.dateFormat = TIDateFormatter.dateShortFormat
        monthDayDateFormatter.dateFormat = TIDateFormatter.monthDayFormat
    }
    
    // MARK: Public functions
    
    static func longDate(from date: Date) -> String {
        return shared.longDateFormatter.string(from: date)
    }
    
    static func shortDate(from date: Date) -> String {
        return shared.shortDateFormatter.string(from: date)
    }
    
    /// - Returns: example: "December 2"
    static func monthDay(from date: Date) -> String {
        return shared.monthDayDateFormatter.string(from: date)
    }
    
}
