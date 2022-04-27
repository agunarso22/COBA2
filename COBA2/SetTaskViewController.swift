//
//  SetTaskViewController.swift
//  COBA2
//
//  Created by Amara Putri Gunarso on 26/04/22.
//

import Foundation
import UIKit

class SetTaskViewController: UIViewController {
    
    @IBOutlet weak var taskTitleTextField: UITextField!
    @IBOutlet weak var decsriptionTextField: UITextField!
    @IBOutlet weak var setTimestamp: UIDatePicker!
    
    private var navigationManager = NavigationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissKeyboard()
    }
    
    // set error untuk text field
    @IBAction func setNewTaskButtonPressed(_ sender: Any) {
        
        // check if task title is empty
        if taskTitleTextField.text?.isEmpty == true {
            showToast(message: "All field must be filled")
            return
        }
        
        
        let timeTarget = setTimestamp.countDownDuration
        
        // check if time target is more than or equals to 15 minutes
        if timeTarget == 0 {
            showToast(message: "Time target must be more than 0 minutes")
            return
        }
        
        // add all data to user default
        let goal = (taskTitle: taskTitleTextField.text ?? "", timeTarget: timeTarget)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        taskTitleTextField.borderStyle = UITextField.BorderStyle.roundedRect
    }
    
    func showToast(message: String){
            
        let toastMsg = UILabel()
        toastMsg.text = message
        toastMsg.textAlignment = .center;
        toastMsg.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastMsg.textColor = UIColor.white
        toastMsg.numberOfLines = 0
        toastMsg.font = UIFont.systemFont(ofSize: 15)
        
        let textSize = toastMsg.intrinsicContentSize
        let toastWidth = min(textSize.width, self.view.frame.size.height-150)
        
        toastMsg.frame = CGRect(x: self.view.frame.size.width/2-(textSize.width/2)-25, y: self.view.frame.size.height-150, width: toastWidth + 50, height: textSize.height + 10)
        toastMsg.alpha = 1.0
        toastMsg.layer.cornerRadius = 10;
        toastMsg.clipsToBounds = true
        self.view.addSubview(toastMsg)
            
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastMsg.alpha = 0.0
        }, completion: {(isCompleted) in
            toastMsg.removeFromSuperview()
        })
    }
}

//MARK: - UITextFieldDelegate
extension UIViewController {
func dismissKeyboard() {
       let tap: UITapGestureRecognizer = UITapGestureRecognizer( target:     self, action:    #selector(UIViewController.dismissKeyboardTouchOutside))
       tap.cancelsTouchesInView = false
       view.addGestureRecognizer(tap)
    }
    
    @objc private func dismissKeyboardTouchOutside() {
       view.endEditing(true)
    }
}

