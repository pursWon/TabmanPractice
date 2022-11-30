import Tabman
import Pageboy

class ViewController: TabmanViewController {
    
    private var viewControllers: Array<UIViewController> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        let vc2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        let vc3 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        let vc4 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        let vc5 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController5") as! ViewController5
        let vc6 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        let vc7 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        let vc8 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController8") as! ViewController8
        let vc9 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController9") as! ViewController9
        let vc10 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController10") as! ViewController10
        
        viewControllers.append(vc)
        viewControllers.append(vc2)
        viewControllers.append(vc3)
        viewControllers.append(vc4)
        viewControllers.append(vc5)
        viewControllers.append(vc6)
        viewControllers.append(vc7)
        viewControllers.append(vc8)
        viewControllers.append(vc9)
        viewControllers.append(vc10)
        
        self.dataSource = self
        
        let bar = TMBar.ButtonBar()
        bar.layout.transitionStyle = .snap
        
        addBar(bar, dataSource: self, at: .top)
    }
}

extension ViewController: PageboyViewControllerDataSource, TMBarDataSource {
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        let item = TMBarItem(title: "")
        item.title = "Page \(index)"
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

