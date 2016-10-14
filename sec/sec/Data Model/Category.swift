//
//  File.swift
//  sec
//
//  Created by Marcus Grant on 10/12/16.
//  Copyright © 2016 Marcus Grant. All rights reserved.
//

import Foundation


class Category {
    var uID: Int
    var name: String
    var timeStamps: [TimeStamp]
    var isActive: Bool = false
    var activeTimeStamp: TimeStamp
    
    init(uID: Int, name: String, timeStamps: [TimeStamp]){
        self.uID = uID
        self.name = name
        self.timeStamps = timeStamps
    }
    
    convenience init(uID: Int, name: String) {
        self.init(uID: uID, name: name, timeStamps: [TimeStamp]())
    }
    
    func startTimer() {
        if isActive {
            print("Trying to activate an active category, of name: \(name)")
            return
        } else {
            var lowestUID = 0
            for currentTimeStamp in timeStamps {
                if currentTimeStamp.uID == lowestUID {
                    lowestUID
                }
            }
            activeTimeStamp = TimeStamp(uID: timeStamps.count, startTime: Date(), category: self)
            isActive = true
        }
        
    }
    
    func stopTimer() {
        if isActive {
            isActive = false
            activeTimeStamp.stop()
        }
    }
    
}
