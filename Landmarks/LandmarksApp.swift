//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kim, Che-Pill on 2022/06/05.
//

import SwiftUI

@main  // 앱 실행시 가장 먼저 불러오는 View를 선언하기 위한 옵션이다.
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            // 원래 이 아래에는 ContentView()가 지정돼 있었을 것이다.
            // 하지만 나는 이 파일을 수정하지 않고, 다른 파일에 연결하기 위해 MainContentView()를 불러오도록 변경하였다.
            // MainContentView 파일로 가보자.
            MainContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
