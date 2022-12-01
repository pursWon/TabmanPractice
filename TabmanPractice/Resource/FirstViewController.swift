import Tabman
import Pageboy
import UIKit
/*
 1. 첫번째 뷰는 배열에 추가하면 안된다.
 2. 배열은 Array<UIViewController>말고 [UIViewController]로 변경
 3. 뷰컨트롤러의 이름에는 숫자가 들어가는 것보다 영문으로 쓸 것을 권장
 */
class FirstViewController: TabmanViewController {
    
    private var viewControllers: [UIViewController] = []
    var nations: [String] = ["홈", "뉴스", "일정", "영상", "승부예측", "참가국", "중계", "FIFA+", "응원광장", "건의게시판"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let secondVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let thirdVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        let fourthVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        let fifthVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        let sixthVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SixthViewController") as! SixthViewController
        let seventhVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SeventhViewController") as! SeventhViewController
        let eightVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EighthViewController") as! EighthViewController
        let ninethVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NinethViewController") as! NinethViewController
        let tenthVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TenthViewController") as! TenthViewController
        let eleventhVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EleventhViewController") as! EleventhViewController
        
        viewControllers.append(secondVC)
        viewControllers.append(thirdVC)
        viewControllers.append(fourthVC)
        viewControllers.append(fifthVC)
        viewControllers.append(sixthVC)
        viewControllers.append(seventhVC)
        viewControllers.append(eightVC)
        viewControllers.append(ninethVC)
        viewControllers.append(tenthVC)
        viewControllers.append(eleventhVC)
        
        self.dataSource = self
        
        let color = UIColor(red: 141/255.0, green: 29/255.0, blue: 86/255.0, alpha: 1.0)
        let bar = TMBar.ButtonBar()
        bar.layout.transitionStyle = .snap
        bar.buttons.customize {(button) in
            button.tintColor = .white
            button.selectedTintColor = .white
        }
        bar.backgroundView.style = .flat(color: color)
        bar.layout.contentInset = UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 20.0)
        bar.ima
        bar.indicator.weight = .medium
        bar.indicator.tintColor = .white
        
        addBar(bar, dataSource: self, at: .top)
    }
}

extension FirstViewController: PageboyViewControllerDataSource, TMBarDataSource {
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        let item = TMBarItem(title: " ")
        item.title = nations[index]
        
        return item
    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}


