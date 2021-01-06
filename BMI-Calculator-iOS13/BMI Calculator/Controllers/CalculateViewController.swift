//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //    переносим все лейблы и слайдеры
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // присваиваем переменную к медели калькуляторБрейн
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //    это функция слайдера роста
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", (sender.value)))m"
    }
    
    //    это функция слайдера веса
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))kg"
    }
    
    //   это кнопка расчета бми
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        //        переносим значения слайдеров в переменные роста и веса
        let height = heightSlider.value
        let weight = weightSlider.value
        
        //        подхватываем функцию расчета бми из модели калькуляторБрейн
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        //        запускаем экран с результатом
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
    //    это функция подготовки запуска экрана с результатом
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //        уточняем если айди совпадает с айди экрана результата
        if segue.identifier == "goToResult" {
            
            //            уверяем что точно именно этот экран нужно открыть
            let destinationVC = segue.destination as! ResultViewController
            
            //            присваиваем переменной бмиВалуе расчитанное значение из калькуляторБрейна
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
            destinationVC.advice = calculatorBrain.getAdvice()
            
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

