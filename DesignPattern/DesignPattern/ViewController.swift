//
//  ViewController.swift
//  DesignPattern
//
//  Created by 오준현 on 2020/12/21.
//

import UIKit

class ViewController: UIViewController {

    let tableView: UITableView = {
        let tableView = UITableView(frame: .null, style: .grouped)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let designPattern = [
        "Chain of Responsiblilty",
        "Command",
        "Interpreter",
        "Iterator",
        "Mediator",
        "Memento",
        "Observer",
        "State",
        "Strategy",
        "Visitor",
        "Abstract Factory",
        "Builder",
        "Factory Method",
        "Monostate",
        "Prototype",
        "Singleton",
        "Adapter",
        "Bridge",
        "Composite",
        "Decorator",
        "Facade",
        "Flyweight",
        "Protection Proxy",
        "Virtual Proxy"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.frame = view.frame
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self,
                           forCellReuseIdentifier: "tableView")
    }

}

extension ViewController: UITableViewDelegate { }

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return designPattern.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableView", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = designPattern[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = tableView.dequeueReusableCell(withIdentifier: "tableView",
                                          for: indexPath) as! TableViewCell
        switch designPattern[indexPath.row] {
        case "Chain of Responsiblilty":
            let view = ChainViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Command":
            let view = CommandViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Interpreter":
            let view = InterpreterViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Iterator":
            let view = IteratorViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Mediator":
            let view = MediatorViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Memento":
            let view = MementoViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Observer":
            let view = ObserverViewController()
            navigationController?.pushViewController(view, animated: true)
        case "State":
            let view = StateViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Strategy":
            let view = StrategyViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Visitor":
            let view = VisitorViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Abstract Factory":
            let view = AbstractViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Builder":
            let view = BuilderViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Factory Method":
            let view = FactoryViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Monostate":
            let view = MonostateViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Prototype":
            let view = PrototypeViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Singleton":
            let view = SingletonViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Adapter":
            let view = AdapterViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Bridge":
            let view = BridgeViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Composite":
            let view = CompositeViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Decorator":
            let view = DecoratorViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Facade":
            let view = FacadeViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Flyweight":
            let view = FlyweightViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Protection Proxy":
            let view = ProtectionViewController()
            navigationController?.pushViewController(view, animated: true)
        case "Virtual Proxy":
            let view = VirtualViewController()
            navigationController?.pushViewController(view, animated: true)
        default:
            break
        }
    }
}


