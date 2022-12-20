//
//  AnimationsEnums.swift
//  AnimationApplication
//
//  Created by Евгений Забродский on 16.12.22.
//

import Foundation

enum AnimationType: String, CaseIterable {
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case fadeIn
    case fadeOut
    case fadeOutIn
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case fall
    case shake
    case pop
    case flipX
    case flipY
    case morph
    case squeeze
    case flash
    case wobble
    case swing
}


enum Curve: String, CaseIterable {
case easeIn
case easeOut
case easeInOut
case linear
case spring
}
