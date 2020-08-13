//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by Tife on 2020/08/11.
//  Copyright © 2020 Tife. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 해당 뷰컨트롤러 클래스가 생성될 때 호출.
        // Low memory와 같은 특별한 경우가 아니라면 한번만 호출되기때문에 초기화 할 때 사용가능.
        // ViewWillAppear 전에 호출
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // 뷰컨트롤러가 화면에 나타나기 직전에 호출.
        // 뷰컨트롤러가 나타나기 직전에 실행되기 때문에 나타나기 직전 일어나는 작업들을 배치 가능.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // 뷰컨트롤러가 화면에 나타난 직후에 호출.
        // 화면에 적용될 애니메이팅이나 API로 부터 정보를 받아서 화면에 업데이트 할 때 이곳에 로직.
    }

    override func viewWillDisappear(_ animated: Bool) {
        
        // 뷰컨트롤러가 화면에 나타난 직전,직후에 호출.
    }

}

