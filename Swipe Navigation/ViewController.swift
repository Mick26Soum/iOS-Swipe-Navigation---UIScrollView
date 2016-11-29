//
//  ViewController.swift
//  Swipe Navigation
//
//  Created by MICK SOUMPHONPHAKDY on 11/26/16.
//  Copyright © 2016 MICK SOUMPHONPHAKDY. All rights reserved.
//	 Scroll View Configuration:
/********************************************************************

1. The UIScrollView will the the container view holding all of the different view controllers to swipe
through.
2. Paging Enabled = true
3. Scrolling Enabled = true
4. Bounces = false
5. Disable Scrolling indicator for vertical and horizontal
6. Create an outlet to for the UIScrollView
7. Create 4 or 5 view controllers and xib files for each VC. The NIB files will used as the UI of the view controller
8. Set the background color for each NIB file
9. You can also do this using the storyboard via the stroryboard Identifier
10. Research scroll view and view controller programming guide
11. Study up on views property of view controller, view size, viw frame



*********************************************************************/

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var scrollView: UIScrollView!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// create an instance of viewcontroller0
		let vc0 = ViewController0(nibName:"ViewController0", bundle:nil)
		// add vc0 as child view to ViewController
		self.addChildViewController(vc0)
		// add vc0 view to scrollView
		self.scrollView.addSubview(vc0.view)
		
		vc0.didMove(toParentViewController: self)
		
		// add the second view controller 1
		let vc1 = ViewController1(nibName:"ViewController1", bundle: nil)
		
		var frame1 = vc1.view.frame // this will get the size of ViewController1 and dependent on phone
		frame1.origin.x = self.view.frame.size.width // When the width of the first vc0 ends, is when this one starts. 
		vc1.view.frame = frame1
		
		self.addChildViewController(vc1)
		self.scrollView.addSubview(vc1.view)
		vc1.didMove(toParentViewController: self)
		
		// add the 3rd
		let vc2 = ViewController2(nibName: "ViewController2", bundle: nil)
		
		var frame2 = vc2.view.frame // this will get the size of ViewController1 and dependent on phone
		frame2.origin.x = self.view.frame.size.width * 2 // times two as this will incrase the size
		vc2.view.frame = frame2
		
		self.addChildViewController(vc2)
		self.scrollView.addSubview(vc2.view)
		vc2.didMove(toParentViewController: self)
		
		// add the 4th
		let vc3	= ViewController3(nibName: "ViewController3", bundle: nil)
		
		var frame3 = vc3.view.frame // this will get the size of ViewController1 and dependent on phone
		frame3.origin.x = self.view.frame.size.width * 3 // times two as this will incrase the size
		vc3.view.frame = frame3
		
		self.addChildViewController(vc3)
		self.scrollView.addSubview(vc3.view)
		vc3.didMove(toParentViewController: self)
		
		// set the content size of the scrollview to hold all 4 views
		self.scrollView.contentSize = CGSize(width:self.view.frame.width * 4, height:self.view.frame.height - 66)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

