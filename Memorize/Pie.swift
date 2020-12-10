//
//  Pie.swift
//  Memorize
//
//  Created by peerawat yoouthong on 10/12/2563 BE.
//  Copyright © 2563 BE ascii112. All rights reserved.
//

import SwiftUI

struct Pie: Shape {
    
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool = false
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngle.radians)),
            y: center.y + radius * sin(CGFloat(startAngle.radians)))
        var p = Path()
        p.move(to: center)
        p.addLine(to: start)
        p.addArc(
            center: center,
            radius: radius,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: clockwise)
        p.addLine(to: center)
        return p
    }
    

}

//struct Pie_Previews: PreviewProvider {
//    static var previews: some View {
//        Pie(startAngle: Angle.degrees(0), endAngle: Angle.degrees(110))
//    }
//}
