//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Antony Balaev on 05/01/2021.
//  Copyright © 2021 Antony Balaev. All rights reserved.
//

import UIKit

//создаем экран результата расчета
class ResultViewController: UIViewController {
    
//    создаем переменную содержащую результат расчета
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
//    переносим все лейблы
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    
//    это функция при загрузке этого экрана
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        устанавливаем в лейбл значение бми
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    
//    это кнопка возвращает назад на главный экран
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
   

}
