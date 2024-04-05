//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: SignUpView!
    
    private let cardNumberTextFieldDelegate = TextFieldDelegate(characterLimit: 16)
    private let cvvTextFieldDelegate = TextFieldDelegate(characterLimit: 3)

    override func viewDidLoad() {
        super.viewDidLoad()
        subscrubeNotifications()
        contentView.fileTypeTextFieleds()
        contentView.cardNumberTextField.delegate = cardNumberTextFieldDelegate
        contentView.cvvTextField.delegate = cvvTextFieldDelegate
    }
    
}
