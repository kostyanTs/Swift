//
//  ViewController2.swift
//  Vk
//
//  Created by Konstantin on 08.08.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    let countFriends = "78"
    let countSubcribes = "150"
    let countGroups = "288"
    
    let comment = "  :))"
    let id = "  @1111111111111"
    let birthday  = "  1 марта 2000 г."
    let city = "  Караганда"
    let subcribers = "  130"

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var buttonsImage: UIImageView!
    
    @IBOutlet weak var InfoTextView: UITextView!
    
    @IBOutlet weak var CommentPersonalTextView: UITextView!
    @IBOutlet weak var IdPersonalTextView: UITextView!
    @IBOutlet weak var BirthDayPersonalTextView: UITextView!
    @IBOutlet weak var CityPersonalTextView: UITextView!
    @IBOutlet weak var SubcribersPersonalTextView: UITextView!
    
    @IBOutlet weak var FriendsCountTextView: UITextView!
    @IBOutlet weak var SubcribesCountTextView: UITextView!
    @IBOutlet weak var GroupsCountTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configurateInfoTextView(InfoTextView)
        configurateCountTextView(FriendsCountTextView, count: countFriends)
        configurateCountTextView(SubcribesCountTextView, count: countSubcribes)
        configurateCountTextView(GroupsCountTextView, count: countGroups)
        configurePersonalTextView(CommentPersonalTextView, text: comment)
        configurePersonalTextView(IdPersonalTextView, text: id)
        configurePersonalTextView(BirthDayPersonalTextView, text: birthday)
        configurePersonalTextView(CityPersonalTextView, text: city)
        configurePersonalTextView(SubcribersPersonalTextView, text: subcribers)
        
//        configureButtonsImage(_view: buttonsImage)
//        configureButtonBack(_view: button)
        
        
        

        // Do any additional setup after loading the view.
    }
    
    func configureButtonBack(_view: UIButton) {
        view.layer.cornerRadius = view.frame.size.width / 2
        
    }
    
    func configureButtonsImage(_view: UIImageView) {
        view.layer.cornerRadius = view.frame.size.width / 2
        
    }
    
    
    
//    func configureView(_view: UIView) {
//        view.layer.borderWidth = 20.0
//        view.layer.borderColor = UIColor.black.cgColor
//
//    }
    func configurateInfoTextView(_ view: UITextView) {
        view.textColor = UIColor.white
      
    }
    
    func configurateCountTextView(_ view: UITextView, count: String) {
        view.text = count
        
    }
    
    func configurePersonalTextView(_ view: UITextView, text: String) {
        view.textColor = UIColor.white
        view.text += text
        
    }
    


    @IBAction func buttonBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)

    }
    
    
}
