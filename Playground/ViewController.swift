//
//  ViewController.swift
//  Playground
//
//  Created by René Pirringer on 20.11.23.
//

import UIKit
import PinLayout

class ViewController: UIViewController {

	override func loadView() {
		super.loadView()
		self.view.backgroundColor = .red
		self.navigationItem.title = "Playground"

		createLabel()
		createButton()
	}
	
	func createLabel() {
		let label = UILabel()
		label.text = "Hello World"
		self.view.addSubview(label)
		label.layout.center()
	}
	
	
	let button = UIButton(type: .system)
	
	func createButton() {
		button.configuration = .filled()
		button.setTitle("Change Color", for: [])
		
		self.view.addSubview(button)
		button.layout.pin(.topSafeArea).centerX()
		button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
		
		
		var configuration = UIButton.Configuration.tinted()
		configuration.title = "Another Button"
		configuration.image = UIImage(systemName: "tortoise")
		configuration.imagePlacement = .top
		configuration.baseForegroundColor = .white
		let button2 = UIButton(configuration: configuration)
		
		self.view.addSubview(button2)
		button2.layout.pin(.top, to: button, gap: 20).centerX()
	}

	@objc
	func buttonPressed() {
		guard var configuration = button.configuration else { return }
		
		configuration.showsActivityIndicator.toggle()
		if configuration.showsActivityIndicator {
			view.backgroundColor = .green
		} else {
			view.backgroundColor = .red
		}
		self.button.configuration = configuration
		
	}


}

