//
//  MyShape.swift
//  SwiftUI_Path_TUT
//
//  Created by 김선중 on 2021/04/23.
//

import SwiftUI


struct MySquare: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.size.width, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.width))
        path.addLine(to: CGPoint(x: 0, y: rect.size.width))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        
        return path
    }
}

struct MyShape: View {
    var body: some View {
        MySquare()
            .frame(width: 250, height: 250)
    }
}

struct MyShape_Previews: PreviewProvider {
    static var previews: some View {
        MyShape()
    }
}
