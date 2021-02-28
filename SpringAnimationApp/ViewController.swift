//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Светлана Романенко on 27.02.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var parametersLabel: SpringLabel!
    
    @IBAction func runButton(_ sender: SpringButton) {
        sender.updateAnimation(view: springAnimationView, label: parametersLabel)
    }
}
