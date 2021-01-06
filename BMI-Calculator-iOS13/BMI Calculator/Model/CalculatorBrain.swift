//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Antony Balaev on 04.01.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
import Foundation

//создаем стракт калькуляторБрейна
struct CalculatorBrain {
    
//    устанавливаем переменную бми
    var bmi: BMI?
    
    
    
//    передаем полученный расчет калькулятора
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) // устанавливаем формат переменной которую будем передавать
        return bmiTo1DecimalPlace // передаем саму переменную
    }
    
//    это функция передачи совета
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice" // возврат значения строки совета
    }
    
//    это функция передачи цвета
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) // возврат цвета
    }
    
//    это функция расчета калькулятра (ничего не возвращает)
    mutating func calculateBMI (height: Float, weight: Float) { // устанавливаем инпуты
        let bmiValue = weight / (height * height) // сама функция
        
//        это условное значение - если туда сюда
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
  
    
}
