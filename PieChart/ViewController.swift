//
//  ViewController.swift
//  PieChart
//
//  Created by Mohamed Qasim Mohamed Majeed on 10/7/19.
//  Copyright © 2019 Lambda Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pieChart : LambdaPieChart!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.refreshAction(nil)
        
    }
    
    @IBAction func refreshAction(_ sender : UIButton!){
        pieChart.lineWidth = 0.85
        pieChart.addChartData(data: [
            PieChartDataSet(percent: 20, colors: [UIColor.purpleishBlueThree,UIColor.brightLilac]),
            PieChartDataSet(percent: 20, colors: [UIColor.darkishPink,UIColor.lightSalmon]),
            PieChartDataSet(percent: 20, colors: [UIColor.dustyOrange,UIColor.lightMustard]),
            PieChartDataSet(percent: 2, colors: [UIColor.greenyBlue,UIColor.hospitalGreen])
            
        ])
    }
    
}

