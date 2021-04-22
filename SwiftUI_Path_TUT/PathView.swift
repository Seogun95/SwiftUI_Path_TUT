//
//  PathView.swift
//  SwiftUI_Path_TUT
//
//  Created by 김선중 on 2021/04/22.
//

import SwiftUI

struct PathView: View {
    var body: some View {
    //정사각형
        Path { path in
            // 1. 오른쪽 모서리로 커서 이동
            path.move(to: CGPoint(x: 200, y: 0))
            // 2.
            path.addLine(to: CGPoint(x: 200, y: 200))
            // 3.
            path.addLine(to: CGPoint(x: 0, y: 200))
            // 4. 왼쪽 모서리로 커서 이동
            path.addLine(to: CGPoint(x: 0, y: 0))
            // 5. 자동으로 경로를 닫음
            path.closeSubpath()
        }
        .fill(Color.blue)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
    }
}
