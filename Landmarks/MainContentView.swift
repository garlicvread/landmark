//
//  MainContentView.swift
//  Landmarks
//
//  Created by Kim, Che-Pill on 2022/06/05.
//

import Foundation
import SwiftUI

// View 프로토콜을 화면에서 렌더링하기 위한 구조체(Structure)
// View의 content와 layout을 정한다.
struct MainContentView: View {
    var body: some View {
        VStack {
            MapView()  // MapView까지 완성하였으면 VStack으로 아래 텍스트 코드블럭과 함께 정렬.
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)  // 노치 부분같이 SafeArea로 설정된 부분을 무시하고 뷰를 배치하기 위한 옵션.
            
            CircleImage()  // 아까 만들어놨던 파일. 기억나시죠?
                .offset(y: -130)
                // CircleImage를 MapView 위로 겹쳐 올리기 위한 옵션.
                // ZStack을 써도 좋지만 이렇게 .offset으로 처리한 것은 위치 정하기가 상대적으로 쉽기 때문이다.
                .padding(.bottom, -130)
                // CircleImage() 뷰를 VStack 전체 프레임의 가장 아래 부분으로부터 130 포인트만큼 위로 올려서 배치하는 옵션.
            
            VStack(alignment: .leading) {  // Stack에 옵션을 주면 스택 내에 적용되는 기본 정렬 규칙을 설정할 수 있다.
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)  // 약간 회색
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()  // 상단 VStack 코드블럭 전체를 화면 맨 위로 올리기 위해 Spacer()를 사용
        }
    }
}


// 프리뷰를 위한 구조체(Structure)
struct MainContentVoiew_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
            .previewDevice("iPhone 13 Pro Max")
    }
}
