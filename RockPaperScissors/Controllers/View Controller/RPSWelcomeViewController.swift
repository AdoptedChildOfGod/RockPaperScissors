//
//  RPSWelcomeViewController.swift
//  RockPaperScissors
//
//  Created by Leonardo Diaz on 5/20/20.
//  Copyright © 2020 Shannon Draeker. All rights reserved.
//

import UIKit

class RPSWelcomeViewController: UIViewController {
    
    // MARK: - Outlets from storyboard

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logInPlayButton: RPSRoundedButton!
    
   // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTextStroke()
        
        // Try to get the current user
        UserController.shared.fetchCurrentUser { [weak self] (success) in
            if success {
                // Change the text of the login button to play
                DispatchQueue.main.async { self?.logInPlayButton.setTitle("Play", for: .normal) }
            }
        }
    }
    
    // MARK: - Actions and Methods
    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
    }
    
    func setUpTextStroke() {
        let string = NSAttributedString(string: "Battle of the Elements II", attributes: [
            NSAttributedString.Key.font : UIFont(name: "Copperplate-Bold", size: 71.0),
            NSAttributedString.Key.foregroundColor : UIColor.systemYellow,
            NSAttributedString.Key.strokeColor : UIColor.black,
            NSAttributedString.Key.strokeWidth : -4,
            ])
        titleLabel.attributedText = string
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameVC" {
            // Make sure the user has an account, or else don't let them play the game
            guard UserController.shared.currentUser != nil else { return }
        }
    }
    
} //End
