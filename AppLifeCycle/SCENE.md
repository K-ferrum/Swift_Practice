SceneDelegate

iOS 12 까지는 대부분 하나의 앱에 하나의 window 였지만 iOS 13 부터는 window의 
개념이 scene으로 대체되었고 하나의 앱에서 여러개의 scene을 가질 수 있음.

AppDelegate의 역할 중 UI의 상태를 알 수 있는 UILifeCycle에 대한 부분을 SceneDelegate가 대체하게 되었음.

AppDelegate에 Session Lifecycle에 대한 역할이 추가 되었음.

“Scene”
UIKit는 UIWindowScene 객체를 사용하는 앱 UI의 각 인스턴스를 관리합니다. Scene에는 UI의 하나의 
인스턴스를 나타내는 windows와 view controllers가 들어있습니다. 또한 각 scene에 해당하는 
UIWindowSceneDelegate 객체를 가지고 있고, 이 객체는 UIKit와 앱 간의 상호 작용을 조정하는 데 사용합니다. 
Scene들은 같은 메모리와 앱 프로세스 공간을 공유하면서 서로 동시에 실행됩니다. 결과적으로 하나의 앱은 여러 scene과 
scene delegate 객체를 동시에 활성화할 수 있습니다.

“Scene Session”
UISceneSession 객체는 scene의 고유의 런타임 인스턴스를 관리합니다. 
사용자가 앱에 새로운 scene을 추가하거나 프로그래밍적으로 scene을 요청하면, 
시스탬은 그 scene을 추적하는 session 객체를 생성합니다. 그 session에는 
고유한 식별자와 scene의 구성 세부사항(configuration details)가 들어있습니다. 
UIKit는 session 정보를 그 scene 자체의 생애(life time)동안 유지하고 
app switcher에서 사용자가 그 scene을 클로징하는 것에 대응하여 그 session을 파괴합니다. 
session 객체는 직접 생성하지않고 UIKit가 앱의 사용자 인터페이스에 대응하여 생성합니다. 
또한 위 3번에서 소개한 두 메소드를 통해서 UIKit에 새로운 scene과 session을 프로그래밍적 방식으로 생성할 수 있습니다

iOS 13부터 AppDelegate가 하는 일
이전에는 앱이 foreground에 들어가거나 background로 이동할 때 앱의 상태를 
업데이트하는 등의 앱의 주요 생명 주기 이벤트를 관리했었지만 더이상 하지 않습니다.
현재 하는 일은
1. 앱의 가장 중요한 데이터 구조를 초기화하는 것
2. 앱의 scene을 환경설정(Configuration)하는 것
3. 앱 밖에서 발생한 알림(배터리 부족, 다운로드 완료 등)에 대응하는 것
4. 특정한 scenes, views, view controllers에 한정되지 않고 앱 자체를 타겟하는 이벤트에 대응하는 것.
5. 애플 푸쉬 알림 서브스와 같이 실행시 요구되는 모든 서비스를 등록하는것.
입니다.

iOS 13 미만의 대상
1. iOS13에서 새로 생긴 SceneDelegate.swift 파일 삭제
2. iOS13에서 AppDelegate에 추가된 UISceneSession과 관련된 두 메소드 삭제
3. iOS13에서 SceneDelegate로 옮겨진 window 프로퍼티를 AppDelegate로 다시 옮기기
    		var window: UIWindow?
4. info.plist에서 Scene과 관련된 Manifest인 Application Scene Manifest 삭제
