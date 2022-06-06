//
//  Landmark.swift
//  Landmarks2
//
//  Created by Kim, Che-Pill on 2022/06/06.
//

import Foundation
import SwiftUI

// Landmark 구조체(structure)를 정의한다.
// 몇 가지 필요한 데이터가 이미 landmarkData.json 파일에 담겨 있는데, 이 json파일에 담겨 있는 데이터의 항목명과 동일하게 항목을 정의한다.
// Codable 옵션은 데이터를 Landmark 구조체와 json 파일 간 데이터 전송을 위해 사용되었다.
// 나중에 Decodable 옵션도 사용되는데, 이 Decodable 옵션은 데이터를 파일에서 읽어올 때 사용된다. 자세한 건 그 때 가서 보도록 한다.
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // imageName 속성을 하나 추가한다. 이 imageName 속성은 Assets에 등록된 이미지 파일의 파일명을 읽어오기 위한 것이다.
    // imageName 변수도 private로 설정했는데, Landmark 구조체에서는 이미지만 다루기 때문.
    // 원래 전역변수는 되도록 안 쓰는 것이 좋다. 변수 이름은 만들기가 꽤나 귀찮고 어려우며, 그래서 전역변수가 많아지면 변수명이 충돌하는 경우가 나타나기 때문.
    // 이건 내 개인 뇌피셜이라 확실치는 않음.
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
