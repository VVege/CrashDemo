//
//  CrashMaker.swift
//  CrashDemo
//
//  Created by 周智伟 on 2020/8/12.
//  Copyright © 2020 vege. All rights reserved.
//

import UIKit

/// language
/// singal
/// mach-o

enum CrashType: String {
    case outOfIndex = "数组越界"
    case zombie = "Zombie"
}

class CrashMaker {
    public class func crashTypes() -> [CrashType] {
        return [.outOfIndex,.zombie]
    }

    public class func crash(type: CrashType) {
        switch type {
        case .outOfIndex:
            let array:NSArray = [0, 1, 2]
            let value = array.object(at: 3)
        case .zombie:
            let zombieMaker = ZombieMaker()
            zombieMaker.zombie()
        }
        
    }
}
