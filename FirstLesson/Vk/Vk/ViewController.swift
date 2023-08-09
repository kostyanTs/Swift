//
//  ViewController.swift
//  Vk
//
//  Created by Konstantin on 07.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PersonalImageView: UIImageView!
    @IBOutlet weak var PersonalContainerView: UIView!
    @IBOutlet weak var ContainerView2: UIView!
    @IBOutlet weak var ContainerView3: UIView!
    @IBOutlet weak var ButtonPush: UIButton!
    
    @IBOutlet weak var ButtonRersonalInfoView: UIButton!
    
    @IBOutlet weak var TabBar: UITabBar!
    
    @IBOutlet weak var FullNameTextView: UITextView!
    
    @IBOutlet weak var CommentTextView: UITextView!
    
    @IBOutlet weak var PersonalInfoTextView: UITextView!
    
    private let fullName = "Alexey Ivanov"
    private let comment = ":)))"
    private let mainBackgroundColor: UIColor = UIColor(red: 0.28, green: 0.30, blue: 0.28, alpha: 0.28)
    private let buttonPushColor: UIColor = UIColor(red: 0.123, green: 0.135, blue: 0.123, alpha: 0.123)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateView(PersonalContainerView)
//        configurateView(ContainerView2)
        configurateView(ContainerView3)
        configurateImageView(PersonalImageView)
        //        configurateTapBar(TabBar)
        configurateButtonPushView(ButtonPush)
        configurateTextNameView(FullNameTextView)
        configurateCommentView(CommentTextView)
        configurateInfoTextView(PersonalInfoTextView)
//        configurateButtonPersonalInfoView(ButtonRersonalInfoView)
        
    }
    
    func configurateTextNameView(_ view: UITextView) {
        view.textColor = UIColor.white
        view.text = fullName
    }
    
    func configurateCommentView(_ view: UITextView) {
        view.textColor = UIColor.white
        view.text = comment
    }
    
    func configurateInfoTextView(_ view: UITextView) {
        view.textColor = UIColor.darkGray
        
    }
    
    func configurateButtonPushView(_ view: UIButton) {
        view.layer.backgroundColor = buttonPushColor.cgColor
        view.layer.cornerRadius = 30
        
        
    }
    
    func configurateButtonPersonalInfoView(_ view: UIButton) {
        view.layer.backgroundColor = UIColor.black.cgColor

            
    }
    
    func configurateTapBar(_ view: UITabBar) {
        view.layer.backgroundColor = mainBackgroundColor.cgColor
        
    }
    
    func configurateView(_ view: UIView) {
        view.layer.cornerRadius = 20
        view.layer.backgroundColor = mainBackgroundColor.cgColor
        view.bringSubviewToFront(view)
    }
    
    func configurateImageView(_ view: UIImageView) {
        //        view.layer.cornerRadius = 120
        view.frame.size.width = 120
        view.frame.size.height = 120
        view.layer.borderWidth = 1.9
        view.layer.borderColor = mainBackgroundColor.cgColor
        view.layer.cornerRadius = view.frame.size.width / 2
        let imageName = "image"
        let image = UIImage(named: imageName)
        view.image = image
        
    }
    
}

