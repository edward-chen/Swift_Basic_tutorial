//
//  SwiftDataTypeTest.swift
//  Swift_Basic_tutorial
//
//  Created by ChenYi-Hung on 2016/4/11.
//  Copyright © 2016年 ChenYi-Hung. All rights reserved.
//

import Foundation

//-------------------------
// Global definition
//-------------------------
let testCompileErr = false


//-------------------------
// function block [start]
//-------------------------

// var example test
func varExampleTest() {
    printMsg("\(__FUNCTION__) start\nWith testCompileErr value: \(testCompileErr)")
    
    var test = 1
    print(test)
    test = 2
    print(test)
    
    printObjType(test)
    // =====================
    // compile error due to test has already being declared as int type
    // error: Cannot assign value of type 'String' to type 'int'
    // =====================
    #if testCompileErr   //set to true will cause error (for testing)
        test = "hello world"
        print(test);
    #endif
    
    
    printMsg("\(__FUNCTION__) end")
}


// let example test
func letExampleTest() {
    printMsg("\(__FUNCTION__) start\nWith testCompileErr value: \(testCompileErr)")
    let test1 = "hello"
    print(test1)
    
    printObjType(test1)
    // =====================
    // compile error due to test1 has be declared as constant type
    // error: Cannt assign to value: 'test1' is a 'let' constant
    // =====================
    #if testCompileErr
        test1 = 3
        print(test1)
    #endif
    
    printMsg("\(__FUNCTION__) end")
}


func printObjType(object : AnyObject) {
    print("\(object_getClass(object))")
}


func printMsg(msg: String) {
    print("--------------------------------\n\(msg)")
    print("--------------------------------");
}

func dataTypeTest() {
    varExampleTest()
    letExampleTest()
}


//-------------------------
// function block [end]
//-------------------------
