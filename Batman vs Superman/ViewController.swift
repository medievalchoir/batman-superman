//
//  ViewController.swift
//  Batman vs Superman
//
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var batmanStrongerButton: UIButton!
    @IBOutlet weak var batmanSmarterButton: UIButton!
    @IBOutlet weak var batmanCraftierButton: UIButton!
    @IBOutlet weak var supermanStrongerButton: UIButton!
    @IBOutlet weak var supermanSmarterButton: UIButton!
    @IBOutlet weak var supermanCraftierButton: UIButton!
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var resetButton: UIButton!
    
    var strongerBatman: Bool = false
    var smarterBatman: Bool = false
    var craftierBatman: Bool = false
    
    var strongerSuperman: Bool = false
    var smarterSuperman: Bool = false
    var craftierSuperman: Bool = false
    
    var wasButtonPressed:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resetButton.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func batmanStrongerButtonTapped(sender: UIButton) {
        batmanStrongerButton.enabled = false
        supermanStrongerButton.enabled = false
        strongerBatman = true
    }
    @IBAction func supermanStrongerButtonPressed(sender: UIButton) {
        batmanStrongerButton.enabled = false
        supermanStrongerButton.enabled = false
        strongerSuperman = true
    }
    
    @IBAction func batmanSmarterButtonTapped(sender: UIButton) {
        batmanSmarterButton.enabled = false
        supermanSmarterButton.enabled = false
        smarterBatman = true
    }
    @IBAction func supermanSmarterButtonPressed(sender: UIButton) {
        batmanSmarterButton.enabled = false
        supermanSmarterButton.enabled = false
        smarterSuperman = true
    }
    
    @IBAction func batmanCraftierButtonTapped(sender: UIButton) {
        batmanCraftierButton.enabled = false
        supermanCraftierButton.enabled = false
        craftierBatman = true
    }
    @IBAction func supermanCraftierButtonPressed(sender: UIButton) {
        batmanCraftierButton.enabled = false
        supermanCraftierButton.enabled = false
        craftierSuperman = true
    }
    
    @IBAction func calculateButtonTapped(sender: UIButton) {
        if strongerBatman == true && smarterBatman == true && craftierBatman == true {
            //view.backgroundColor = UIColor(patternImage: UIImage(named: "batman")!)
            imageDisplay.image = UIImage(named: "batman")
            wasButtonPressed = true
            
        }
        else if strongerSuperman && smarterSuperman && craftierSuperman{
            //view.backgroundColor = UIColor(patternImage: UIImage (named: "superman")!)
            imageDisplay.image = UIImage(named: "superman")
            wasButtonPressed = true
        }
        else{
            //view.backgroundColor = UIColor(patternImage: UIImage (named: "batmanAndSuperman")!)
            imageDisplay.image = UIImage(named: "batmanAndSuperman")
            wasButtonPressed = true
        }
        if wasButtonPressed {
            resetButton.hidden = false
        }
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        batmanStrongerButton.enabled = true
        supermanStrongerButton.enabled = true
        batmanSmarterButton.enabled = true
        supermanSmarterButton.enabled = true
        batmanCraftierButton.enabled = true
        supermanCraftierButton.enabled = true
        resetButton.hidden = true
        imageDisplay.image = UIImage()
    }
    
    
}

















