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
    @IBOutlet weak var counterLabelMain: UINavigationItem!
    @IBOutlet weak var viewNumberOne: UIView!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabelMain.title = "Нажатия: 0"
    }
    
    @IBAction func tapOnBlackAquareAction(_ sender: UITapGestureRecognizer) {
        counter += 1
        counterLabelMain.title = "Нажатия: \(counter)"
        let minX = Double(blackSquareView.frame.width / 2)
        let minY = Double(blackSquareView.frame.height / 2)
        let maxX = Double(viewNumberOne.frame.maxX)
        let maxY = Double(viewNumberOne.frame.maxY)
        let randomX = Double.random(in: minX...maxX - 100)
        let randomY = Double.random(in: minY...maxY - 100)
        blackSquareView.layer.position = CGPoint(x: randomX, y: randomY)
    }
}

