//
//  Extension + SpringButton.swift
//  SpringAnimationApp
//
//  Created by Светлана Романенко on 27.02.2021.
//

import Spring

extension SpringButton {
    
    func updateAnimation(view: SpringView, label: SpringLabel) {
        
        //стартовые настройки при загрузке
        updateView(view: view,
                   label: label,
                   animation: "shake",
                   curve: "string",
                   force: 1,
                   duration: 2,
                   delay: 1)
        
        // обновление элементов
        let animationView = Spring.AnimationPreset.random()
        let curveView = Spring.AnimationCurve.random()
        let forceView = CGFloat(Float.random(in: 1...1.5))
        let durationView = CGFloat(Float.random(in: 2...3))
        let delayView = CGFloat(Float.random(in: 1...2))
        
        //обновление кнопки
        self.setTitle("Run \(animationView)", for: .normal)
        self.animate()

        //передача данных в элементы
        updateView(view: view,
                   label: label,
                   animation: animationView,
                   curve: curveView,
                   force: forceView,
                   duration: durationView,
                   delay: delayView)
    }
    
    func updateView(view:SpringView,
                    label: SpringLabel,
                    animation: String,
                    curve: String,
                    force: CGFloat,
                    duration: CGFloat,
                    delay: CGFloat) {
        view.animation = animation
        view.curve = curve
        view.force = force
        view.duration = duration
        view.delay = delay
        view.animate()
        
        label.text =
        """
        preset: \(view.animation)
        curve: \(view.curve)
        force: \(string(from: view.force))
        duration: \(string(from: view.duration))
        delay: \(string(from: view.delay))
        """
    }
    
    private func string(from value: CGFloat) -> String {
         String(format: "%.2f", value)
     }
}
