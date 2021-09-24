//
//  ViewController.swift
//  ios1908wa-g87-ls8
//
//  Created by Ивченко Антон on 23.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var blackSquareView: UIView!
    @IBOutlet weak var mainView: UIView!
    
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Нажатия: 0"
    }
    
    @IBAction func tapOnBlackAquareAction(_ sender: UITapGestureRecognizer) {
        counter += 1
        counterLabel.text = "Нажатия: \(counter)"
        let minX = Double(blackSquareView.frame.width / 2)
        let minY = Double(blackSquareView.frame.height / 2)
        let maxX = Double(mainView.frame.maxX)
        let maxY = Double(mainView.frame.maxY)
        let randomX = Double.random(in: minX ... maxX - minX)
        let randomY = Double.random(in: minY ... maxY - minY)
        blackSquareView.layer.position = CGPoint(x: randomX, y: randomY)
    }
}

