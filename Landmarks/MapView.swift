//
//  MapView.swift
//  Landmarks2
//
//  Created by Kim, Che-Pill on 2022/06/06.
//

import SwiftUI
import MapKit  // MapKit 프레임워크에 접근하기 위한 import

struct MapView: View {
    // state 변수 region 생성: region 변수는 지역에 대한 정보를 담는다.
    // state라는 옵션을 붙여 놨기 때문에 region 변수에 담긴 데이터가 변경되는 경우 그 변경되는 데이터를 자동으로 업데이트해서 사용할 수 있다. 즉, region 변수의 상태를 자동으로 업데이트받을 수 있다. 개꿀!
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    // @Private State var region 값을 받아온다. region의 값이 변화하는 경우 자동으로 업데이트된다.
    
    // Binding하는 방법은 State 지정을 한 변수의 이름 앞에 $를 붙이는 것이다.
    // 여기에서는 region 변수를 State 지정함으로써 이 변수를 Binding에서 가져다 쓰겠다고 해 놓은 상태.
    
    // Private는 큰 의미는 없고, 이 뷰 내에서만 사용하려고 global이 아니라 private로 선언한 것.
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
            .previewDevice("iPhone 13 Pro Max")
    }
}


// 라이브 프리뷰 버튼을 눌렀을 때 지도가 나오면 성공적으로 코딩을 완료한 것이다.
// 이제 지금까지 만들었던 MainContentView와 CircleImage, MapView 세 뷰를 결합해야 한다.
// MainContentView로 가자.
