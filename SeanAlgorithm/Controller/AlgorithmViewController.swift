//
//  ViewController.swift
//  SeanAlgorithm
//
//  Created by Bonilla, Sean on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

class AlgorithmViewController: UIViewController {

    public override func viewDidLoad() -> Void {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
    @IBOutlet var algorithmText: UILabel!
    
    @IBOutlet var swiftImage: UIImageView!
//    public override func didReceiveMemoryWarning()  {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    //Loops each string and formats it in some type of way
    private func formatAlgorithm() -> Void {
        let title : String = "IOS"
        let stepOne : String = "Create new project"
        let stepTwo : String = "Single view"
        let stepThree : String = "Create App"
        let stepFour : String = "Put AppDelegate, Assets and info into a folder named Resources"
        let stepFive : String = "Put ViewController in a folder named Controller"

        let stepSix : String = "Put main.storyboard and launch screen.storyboard in a folder namber View"
        
        let algorithm = [stepOne,stepTwo, stepThree, stepFour,stepFive,stepSix]
        
        let attributesDictionary = [NSAttributedStringKey.font: algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        for step in algorithm{
            
    
            let bullet : String = "😴"
            let formattedStep : String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
        
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0, attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
    }
    
    private func createOutlineStyle() -> NSParagraphStyle{
    let outlineStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
    outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
    outlineStyle.firstLineHeadIndent = 20
    outlineStyle.headIndent = 35
    
    return outlineStyle
    }
    

}

