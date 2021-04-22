//
//  PathView.swift
//  SwiftUI_Path_TUT
//
//  Created by 김선중 on 2021/04/22.
//

import SwiftUI

struct PathView: View {
    var body: some View {
   //삼각형
        Path { path in
            // 1. 커서 이동
            path.move(to: CGPoint(x: 200, y: 100))
            // 2.
            path.addLine(to: CGPoint(x: 100, y: 300))
            // 3.
            path.addLine(to: CGPoint(x: 300, y: 300))
            // 4-1
//            path.addLine(to: CGPoint(x: 200, y: 100))
            // 4-2. 자동으로 경로를 닫음
            path.closeSubpath()
        }
        .fill(Color.yellow)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
