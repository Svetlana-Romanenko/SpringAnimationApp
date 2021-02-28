//
//  Extension + Spring.swift
//  SpringAnimationApp
//
//  Created by Светлана Романенко on 27.02.2021.
//

import Spring

extension Spring.AnimationPreset {
    
    static func random() -> String {
        
        let animationArray = [
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "pop",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing"
        ]
        
        return animationArray.randomElement() ?? "shake"
    }
}

extension Spring.AnimationCurve {
    
    static func random() -> String {
        let curveArray = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
        ]
        
        return curveArray.randomElement() ?? "spring"
    }
}

