//
//  ViewController.swift
//  Lesson_5-part_2
//
//  Created by Evgeniy Nosko on 3.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var patientsDiagnozesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addPatient() {
        Hospital.shared.addPatient()
    }
    
    @IBAction func printPatient() {
        patientsDiagnozesLabel.text = Hospital.shared.patientsAges()
    }

}
