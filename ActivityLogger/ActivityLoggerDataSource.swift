//
//  ActivityLoggerDataSource.swift
//  ActivityLoggerDataSource
//
//  Created by Kuldeep Tanwar on 29/11/19.
//  Copyright © 2019 AJM Softwares. All rights reserved.
//

import UIKit

public class ActivityLoggerDataSource: NSObject {
    //Shared Instance
    public static let shared: ActivityLoggerDataSource = ActivityLoggerDataSource()
    public var dataSource: [String] = ["Welcome to UI Logger (scrolldown to dismiss)"]
}
