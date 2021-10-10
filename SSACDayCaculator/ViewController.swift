//
//  ViewController.swift
//  SSACDayCaculator
//
//  Created by Sang hun Lee on 2021/10/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var firstBox: UIView!
    @IBOutlet var secondBox: UIView!
    @IBOutlet var thirdBox: UIView!
    @IBOutlet var fourthBox: UIView!
    @IBOutlet var d100Date: UILabel!
    @IBOutlet var d200Date: UILabel!
    @IBOutlet var d300Date: UILabel!
    @IBOutlet var d400Date: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstBox.layer.cornerRadius = 10
        firstBox.clipsToBounds = true
        firstBox.backgroundColor = .black
        secondBox.layer.cornerRadius = 10
        secondBox.clipsToBounds = true
        secondBox.backgroundColor = .black
        thirdBox.layer.cornerRadius = 10
        thirdBox.clipsToBounds = true
        thirdBox.backgroundColor = .black
        fourthBox.layer.cornerRadius = 10
        fourthBox.clipsToBounds = true
        fourthBox.backgroundColor = .black
        // Do any additional setup after loading the view.
    }

    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        
    
        print(sender.date)
        // DateFormatter: 1. 원하는 형식대로 날짜 객체를 출력 가능(DateFormat) 2. 타임존에 맞춰서 설정 가능
        let format = DateFormatter()
        format.dateFormat = """
        yyyy년
        MM월 dd일
        """
        
        // 21/10/20,
        
        let value = format.string(from: sender.date)
        print(value)
        
        // 시간에 대한 타이밍 출력(ex. 100일 뒤) - TimeInterval, Calendar
        let after100Date = Date(timeInterval: 86400 * 100, since: sender.date)
        d100Date.text = (format.string(from: after100Date))
        
        let after200Date = Date(timeInterval: 86400 * 200, since: sender.date)
        d200Date.text = (format.string(from: after200Date))
        
        let after300Date = Date(timeInterval: 86400 * 300, since: sender.date)
        d300Date.text = (format.string(from: after300Date))
        
        let after400Date = Date(timeInterval: 86400 * 400, since: sender.date)
        d400Date.text = (format.string(from: after400Date))
        
    }
    

}

