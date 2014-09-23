//
//  DetailViewController.swift
//  ios8Cookbook
//
//  Created by Alexey Chulochnikov on 22.09.14.
//  Copyright (c) 2014 Alexey Chulochnikov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

	@IBOutlet weak var detailDescriptionLabel: UILabel!


	var detailItem: AnyObject?

	func configureView() {
		// Update the user interface for the detail item.
		if let detail: AnyObject = self.detailItem {
		    if let label = self.detailDescriptionLabel {
		        label.text = detail.description
		    }
		}
		
		if detailItem?.description == "blurEffect" {
			let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
			let blurView = UIVisualEffectView(effect: blurEffect)
			
			blurView.frame.size = CGSize(width: 200, height: 200)
			blurView.center = view.center
			
			view.backgroundColor = UIColor(CGColor: UIColor.grayColor().CGColor)
			view.addSubview(blurView)
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		self.configureView()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

