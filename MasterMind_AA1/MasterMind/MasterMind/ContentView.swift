//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//


import UIKit

@IBDesignable class ContentView: UIStackView {

    //MARK: Properties
    private var pionButtons = [UIButton]()
    var decoded : Array<Int>?
    
    var buttonSize: CGSize = CGSize(width: 20.0, height: 20.0)
    var pionCount: Int = 4 {
        didSet {
   
    
    func changePionColor(button: UIButton) {
        
        // Init Button Images
        let bundle = Bundle(for: type(of: self))
        let value = Int(button.currentTitle!)!
        //0 = none 1 = white 2 = red
        switch (value) {
        case 1:
            let whitePion = UIImage(named: "white", in: bundle, compatibleWith: self.traitCollection)
            button.setImage(whitePion, for: .normal)
            button.setTitle(String(value), for: .normal)
        case 2:
            let redPion = UIImage(named:"red", in: bundle, compatibleWith: self.traitCollection)
            button.setImage(redPion, for: .normal)
            button.setTitle(String(value), for: .normal)
        default:
            let defaultPion = UIImage(named:"empty", in: bundle, compatibleWith: self.traitCollection)
            button.setImage(defaultPion, for: .normal)
            button.setTitle(String(value), for: .normal)
        }
    }
    
        }
    }
}
