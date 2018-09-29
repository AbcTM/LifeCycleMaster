//
//  Print.swift
//  LifeCycleMaster
//
//  Created by tlc on 2018/4/9.
//  Copyright © 2018年 tlc. All rights reserved.
//

import Foundation


func PrintLog<T>(message: T, file: String = #file, methodName: String = #function, lineNumber: Int = #line){
    #if DeBug
    let filename = URL(fileURLWithPath: file).lastPathComponent.components(separatedBy: ".").first ?? ""
    print("\(filename)-\(methodName)-\(lineNumber):\(message)");
    #endif
}

func PrintLog(file: String = #file, methodName: String = #function, lineNumber: Int = #line) {
    PrintLog(message: "\n", file: file, methodName: methodName, lineNumber: lineNumber)
}
