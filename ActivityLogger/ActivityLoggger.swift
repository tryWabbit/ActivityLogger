//
//  ActivityLogObjects.swift
//  ActivityLogger
//
//  Created by Kuldeep Tanwar on 19/12/19.
//  Copyright © 2019 Kuldeep Tanwar. All rights reserved.
//

import Foundation
public class ActivityLoggger: NSObject {
    public static var enableLogging: Bool = true
    
    public static let shared: ActivityLoggger = ActivityLoggger()
    
    public class func finalLog(_ log:String) {
        ActivityLoggerDataSource.shared.dataSource.append(log)
        guard enableLogging else { return }
        print(log)
    }
    
    public static let dafaultLogger = ActivityLogType("Default")
}

public func defaultLog(_ log: String) {
    ActivityLoggger.dafaultLogger.log(log)
}
