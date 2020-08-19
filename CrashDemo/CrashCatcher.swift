//
//  CrashCatcher.swift
//  CrashDemo
//
//  Created by 周智伟 on 2020/8/13.
//  Copyright © 2020 vege. All rights reserved.
//

import UIKit

internal let document = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
func Document(_ path: String) -> String {
    return document + path
}

class CrashCatcher {
    public class func register() {
        NSSetUncaughtExceptionHandler(handleException(exception:))
    }
}

private func handleException(exception: NSException) {
    let directory = Document("CrashLog/")
    let path = directory + filename()
    let reason = exception.reason ?? ""
//    let data = Data.init(base64Encoded: reason)
//    if FileManager.default.fileExists(atPath: directory, isDirectory: true) {
//        try? FileManager.default.createDirectory(atPath: directory, withIntermediateDirectories: true, attributes: nil)
//    }
//    FileManager.default.createFile(atPath: path, contents: data, attributes: nil)
    print(reason)
}


private func filename() -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "%Y-%m-%d %H:%M:%S %z"
    return formatter.string(from: date) + "log.txt"
}
