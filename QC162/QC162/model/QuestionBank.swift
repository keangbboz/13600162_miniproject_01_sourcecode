//
//  QuestionBank.swift
//  QC162
//
//  Created by Real on 3/11/18.
//  Copyright © ค.ศ. 2018 Titiwat Phettair. All rights reserved.
//

import Foundation
class QuestionBank {
    @IBOutlet weak var color: UIImageView!
    var list = [Question]()
    //list ชื่อตัวแปร ชนิดของมันคือ ชนิด Question แบบ Array เพราะ []
    //Question คือ Class ในไฟล์ชื่อว่า Question.swift
    init() {
        let item = Question(text : "RED OR BLUE", correctAnswer: true)
        
        list.append(item)
        //เพราะ list เป็น Array จึงใช้ append เพื่อต่อท้ายให้สมาชิกของ Array เพิ่ม
        list.append(Question(text : "YELLOW OR GREEN", correctAnswer: true))
       
        list.append(Question(text : "BLACK OR WHITE", correctAnswer: true))
       
        list.append(Question(text : "PURPLE OR YELLOW", correctAnswer: true))
        
        list.append(Question(text : "RED OR PINK", correctAnswer: false))
        
    }
}
