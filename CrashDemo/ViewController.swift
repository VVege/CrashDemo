//
//  ViewController.swift
//  CrashDemo
//
//  Created by 周智伟 on 2020/8/12.
//  Copyright © 2020 vege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CrashCatcher.register()
        initSubviews()
    }
}

//MARK:- Private
private extension ViewController {
    func initSubviews() {
        tableView = UITableView.init(frame: CGRect(x: 0, y: 100, width: view.bounds.width, height: view.bounds.height - 200), style: UITableView.Style.plain)
        tableView.backgroundColor = UIColor.red
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }
}

//MARK:- UITableView
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrashMaker.crashTypes().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = CrashMaker.crashTypes()[indexPath.row].rawValue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        CrashMaker.crash(type: CrashMaker.crashTypes()[indexPath.row])
    }
}
