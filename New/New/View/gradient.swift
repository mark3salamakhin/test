
 import UIKit

 class ExampleButton: UIButton {
     //MARK: initialization
     override init(frame: CGRect) {
         super.init(frame: frame)
 
         let gradient = CAGradientLayer()
         gradient.frame = frame
         gradient.colors = [UIColor.systemRed.cgColor, UIColor.systemGray.cgColor ]
         layer.addSublayer(gradient)
     }
     
     required init?(coder : NSCoder) {
         fatalError()
     }
 }
 
 
 
