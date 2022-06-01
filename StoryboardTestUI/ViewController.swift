//
//  ViewController.swift
//  StoryboardTestUI
//
//  Created by Nathan on 01/06/2022.
//

import UIKit

class ViewController: UIViewController {
        
    lazy var backgroundLayerGradiant: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [
            UIColor(red: 0.953, green: 0.816, blue: 0.329, alpha: 1).cgColor,
            UIColor(red: 0.953, green: 0.804, blue: 0.329, alpha: 1).cgColor,
            UIColor(red: 0.945, green: 0.761, blue: 0.329, alpha: 1).cgColor,
            UIColor(red: 0.937, green: 0.694, blue: 0.325, alpha: 1).cgColor,
            UIColor(red: 0.929, green: 0.6, blue: 0.325, alpha: 1).cgColor,
            UIColor(red: 0.914, green: 0.478, blue: 0.322, alpha: 1).cgColor,
            UIColor(red: 0.898, green: 0.337, blue: 0.318, alpha: 1).cgColor
        ]
        layer.locations = [0.07, 0.27, 0.43, 0.59, 0.73, 0.87, 1]
        layer.startPoint = CGPoint(x: 0.25, y: 0.5)
        layer.endPoint = CGPoint(x: 0.75, y: 0.5)
        layer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: -1.33, b: -1.17, c: 1.94, d: -0.65, tx: 0.41, ty: 1.49))
        layer.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
        layer.position = view.center
        return layer
    }()
 
    @IBOutlet weak var stackViewAuthor: UIStackView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var sliderProgress: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        cardView.layer.cornerRadius = 25
        sliderProgress.isEnabled = false
    }


}
private extension ViewController {
    func setup() {
        setupInterface()
        view.bringSubviewToFront(cardView)
        view.bringSubviewToFront(stackViewAuthor)
    }
    
    func setupInterface() {
        view.layer.addSublayer(backgroundLayerGradiant)
        
    }
    
}

