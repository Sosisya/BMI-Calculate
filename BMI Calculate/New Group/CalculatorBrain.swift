import UIKit

struct CalculatorBrain {

    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(named: "blue")!)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: UIColor(named: "green")!)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(named: "salmon")!)
        default:
            break
        }
    }

    func getBMIValue() -> String {
        let bmiTiDecimal = String(format:"%.1f", bmi?.value ?? 0.0)
        return bmiTiDecimal
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
