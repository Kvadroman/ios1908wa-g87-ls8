//
//  ViewController.swift
//  ios1908wa-g87-ls8
//
//  Created by Ивченко Антон on 23.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blackSquareView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var counterLabel: UILabel!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "\nНажатия: 0"
    }
    
    @IBAction func tapOnBlackAquareAction(_ sender: UITapGestureRecognizer) {
        counter += 1
        counterLabel.text = "\nНажатия: \(counter)"
        let minX = Double((blackSquareView.frame.width) / 2)
        let minY = Double((blackSquareView.frame.height) / 2 + counterLabel.frame.height)
        let maxX = Double(mainView.frame.maxX - minX )
        let maxY = Double(mainView.frame.maxY - minY )
        let randomX = Double.random(in: minX...maxX )
        let randomY = Double.random(in: minY...maxY )
        blackSquareView.layer.position = CGPoint(x: randomX, y: randomY)
    }
}

