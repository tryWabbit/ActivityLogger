//
//  LogItem.swift
//  ActivityLogger
//
//  Created by Kuldeep Tanwar on 19/12/19.
//  Copyright © 2019 Kuldeep Tanwar. All rights reserved.
//

import Foundation
public class ActivityLogType: NSObject {
    // Public variable
    public var prefix: String!
    public var dateFormat: String = "HH:mm:ss"
    
    public lazy var dateFormatter: DateFormatter  = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter
    }()
    
    public init(_ objectPrifix: String) {
        prefix = objectPrifix
    }
    
    public func log(_ log: String) {
        let dateString = dateFormatter.string(from: Date())
        let fullLogString = "\(dateString) | Activity Logger | \(prefix ??  "Log: ") -> " + log
        ActivityLoggger.finalLog(fullLogString)
    }
}


