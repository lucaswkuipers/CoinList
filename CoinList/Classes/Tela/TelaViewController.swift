//
//  TelaViewController.swift
//  Moeda Digital Super App
//
//  Created by Lucas Werner Kuipers on 14/04/2021.
//

import UIKit

public class TelaViewController: UIViewController {
	
	@IBAction func getCoins(_ sender: UIButton) {
		print("coins")
	}
	@IBOutlet var tableView: UITableView!
	
	
    public override func viewDidLoad() {
        super.viewDidLoad()
		
		setupUI()
		fetchData()
		print("carregou!!")
    }
	
	func setupUI() {

		let bundle = Bundle(identifier: "com.lucaswkuipers.CoinList")
		let nib = UINib(nibName: "TelaTableViewCell", bundle: bundle)

		tableView.register(nib, forCellReuseIdentifier: "TelaTableViewCell")
		tableView.delegate = self
		tableView.dataSource = self
		tableView.tableFooterView = UIView()
	}
	
	func fetchData() {
		print("fetching data")
	}
}

extension TelaViewController: UITableViewDelegate, UITableViewDataSource {
	public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "TelaTableViewCell", for: indexPath) as? TelaTableViewCell
		
		cell?.nomeMoedaLabel.text = "Bitcoin"
						
		return  cell!
	}
	
	public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return AppDimensions.rowHeight
	}
}

struct AppDimensions {
	static let rowHeight = CGFloat(250.0)
}
