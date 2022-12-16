//
//  ViewController.swift
//  AnimationApplication
//
//  Created by Евгений Забродский on 16.12.22.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    
    @IBOutlet weak var forceTF: UITextField!
    @IBOutlet weak var durationTF: UITextField!
    @IBOutlet weak var delayTF: UITextField!
    @IBOutlet weak var curveTF: UITextField!

    //MARK: - Life cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK: - Methods

    @IBAction func startButton(_ sender: UIButton) {
        springViewSetup()
    }
    
    func setupUI() {
        springView.layer.cornerRadius = springView.bounds.height / 2
    }
    
    func springViewSetup() {
        
        springView.animation = AnimationType.allCases.randomElement()!.rawValue
        springView.animate()
        infoLabel.text = springView.animation
        springView.backgroundColor = .random()
        
        springView.curve = Curve.allCases.randomElement()!.rawValue
        curveTF.text = springView.curve
        
        springView.force = CGFloat.random(in: 0...2)
        forceTF.text = springView.force.description
        
        springView.duration = CGFloat.random(in: 0...2)
        durationTF.text = springView.duration.description
        
        springView.delay = CGFloat.random(in: 0...2)
        delayTF.text = springView.delay.description
    }
}
