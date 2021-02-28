//
//  Extension + SpringButton.swift
//  SpringAnimationApp
//
//  Created by Светлана Романенко on 27.02.2021.
//

import Spring

extension SpringButton {
    
    func updateAnimation(view: SpringView, label: SpringLabel) {
        
        let animation = Spring.AnimationPreset.random()
        
        self.setTitle("Run \(animation)", for: .normal)
        self.animate()
        
        label.text =
        """
        preset: \(animation)
        curve: \(view.curve)
        force: \(string(from: view.force))
        duration: \(string(from: view.duration))
        delay: \(string(from: view.delay))
        """
        
        view.animation = animation
        view.curve = Spring.AnimationCurve.random()
        view.force = CGFloat(Float.random(in: 1...1.5))
        view.duration = CGFloat(Float.random(in: 2...3))
        view.delay = CGFloat(Float.random(in: 1...2))
        view.animate()
    }
    
    private func string(from value: CGFloat) -> String {
         String(format: "%.2f", value)
     }
}
