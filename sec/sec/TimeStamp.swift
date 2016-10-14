//
//  TimeStamp.swift
//  sec
//
//  Created by Marcus Grant on 10/12/16.
//  Copyright © 2016 Marcus Grant. All rights reserved.
//

import Foundation

class TimeStamp: NSObject {
    var uID: Int
    var startTime: Date
    var endTime: Date?
    var category: Category
    
    // Computed values
    var seconds: Int? {
        get {
            if let endTime = endTime {
                return Int(endTime.timeIntervalSince(startTime))
            } else {
                print("Attempted to get duration of TimeStamp when nil")
                return nil
            }
        }
    }
    var minutes: Int? {
        get {
            if let seconds = seconds {
                return seconds / 60
            } else {
                return nil
            }
        }
    }
    var hours: Int? {
        get {
            if let minutes = minutes {
                return minutes / 60
            } else {
                return nil
            }
        }
    }

    
    
    init(uID: Int, startTime: Date, endTime: Date?, category: Category) {
        self.startTime  = startTime
        self.endTime    = endTime
        self.uID        = uID
        self.category   = category
        super.init()
    }
    
    convenience init(uID: Int, startTime: Date, category: Category) {
        self.init(uID: uID, startTime: startTime, endTime: nil, category: category)
    }
    
    func stop() {
        // Check if this instance has alread had an endTime set, we only ever want to set it once
        if endTime == nil {
            endTime = Date()
        }
    }
}
