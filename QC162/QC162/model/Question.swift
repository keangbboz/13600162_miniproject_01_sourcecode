//
//  Question.swift
//  QC162
//
//  Created by Real on 3/11/18.
//  Copyright © ค.ศ. 2018 Titiwat Phettair. All rights reserved.
//

import Foundation
class Question {
    //Properties
    //Global Variable คือตัวแปรแบบ Global ซึ่งทุกฟังชั่นเรียกใช้ไได้ เพราะอยู่บนสุดของ class
    let qusetionText : String
    let answer : Bool
    
    //กำหนดค่าเริ่มตต้น class
    //init() --> เวลาเขียนให้ทำงาน
    init(text : String, correctAnswer : Bool) {
        qusetionText = text
        answer = correctAnswer
    }
    //    let a = Question(text: "ข้อความ",correctAnswer : true)
    //    a.qusetionText//ข้อความ
    //    a.correctAnswer//true
    //
}
