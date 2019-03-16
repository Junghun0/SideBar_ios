# SideBar_ios

#### SWRevelViewController 라이브러리 사용
- https://github.com/John-Lluch/SWRevealViewController 
- SWRevealViewController.h / SWRevealViewController.m 추가
<div>
<img width="600" height="200"src="https://user-images.githubusercontent.com/30828236/54476834-037d5700-4845-11e9-9be3-fe82d86ff870.png"/>
</div>


- 브릿징 헤더 ?
--> Objective-c 라이브러리를 사용하기 위해서 브릿징 헤더 라는 파일이 필요 !(Swift에게 Objective-c 클래스의 존재를 알려줌)

- SampleSideBar_ios-Bridging-Header.h 파일에 import 해줌
<div>
<img width ="600" height="130"src="https://user-images.githubusercontent.com/30828236/54476914-075da900-4846-11e9-8336-6cdb1ea38d95.png"/>
</div>

- FrontViewController.swift

```swift
  class FrontViewController : UIViewController{
    @IBOutlet var sideBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //메인 컨트롤러의 참조 정보를 가져온다.
        if let revealVC = self.revealViewController(){
            //버튼이 클릭될 때 메인 컨트롤러에 정의된 revealToggle(_:)을 호출하도록 정의한다
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
            //제스처를 뷰에 추가한다!
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }
}
```


- 스토리보드
<div>
  <img width ="600" height ="500"src="https://user-images.githubusercontent.com/30828236/54477207-fd897500-4848-11e9-90ca-9e0b69ef160c.png"/>
</div>
