//
//  ViewController.swift
//  HW_2.2
//
//  Created by Beelab_ on 22/10/21.
//

import UIKit

extension UIColor {
    static func rgb(red: Float, green: Float, blue: Float) -> UIColor {
        return UIColor(red: CGFloat(red/maxValueForSliders), green: CGFloat(green/maxValueForSliders), blue: CGFloat(blue/maxValueForSliders), alpha: 1)
      }
    }

let maxValueForSliders:Float = 1

class ViewController: UIViewController {

    @IBOutlet weak var resultColor: UIView!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redColorSlider.maximumValue = maxValueForSliders
        greenColorSlider.maximumValue = maxValueForSliders
        blueColorSlider.maximumValue = maxValueForSliders
    }
    
    override func viewWillLayoutSubviews() {
        resultColor.layer.cornerRadius = 20
        redColorSlider.minimumTrackTintColor = .red
        greenColorSlider.minimumTrackTintColor = .green
        blueColorSlider.minimumTrackTintColor = .blue
        
    }
    
    @IBAction func redSliderSelector() {
        resultColor.backgroundColor = UIColor.rgb(red: redColorSlider.value, green: greenColorSlider.value, blue: blueColorSlider.value)
        redValueLabel.text = String(format: "%.2f", redColorSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueColorSlider.value)

    }
    

}

