//
//  HomeViewController.swift
//  JeeAdvice
//
//  Created by ANKIT YADAV on 04/11/19.
//  Copyright © 2019 ANKIT YADAV. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    var imgArr = ["phy","chem","Gravity","electrochem","relation","circle"]
    var courseNameArr = ["JEE Physics Syllabus","JEE Chemistry Syllabus","Gravity","ElectroChemical","Mathematics-RELATION & FUNCTION CHAPTER-1 INTRO","Circles"]
    var authorNameArr = ["ALexa","Adam","Aman","Eakesh","Pathshala","UnAcademy"]
    var videoCArr = ["gLq9lWHTadQ","rwXL73AkX20","4K7cRxXuQ_k","j7PYqR1iGMg","u9xJ3qgG2yk","ZHyAEqJw90Y"]
    var TxtViewArr = ["National Testing Agency has released the official JEE Main 2020 syllabus on September 2. NTA has also released the syllabus and sample questions for the newly added Planning section in Paper 2 of JEE Main. Candidates can access the syllabus of JEE Main 2020 from the article below to know important topics and plan study accordingly. Students can check out the JEE Main 2020 syllabus for Physics, Chemistry and Mathematics through this page. Candidates preparing for JEE Main can go through the subject wise important concepts and topics through the JEE Main syllabus 2020. With the help of syllabus students appearing for JEE Main can plan their studies and focus on topics that will require more time and concepts which can be mastered easily. NTA has announced the JEE Main 2020 syllabus for both Paper 1 and Paper 2. Along with the syllabus of JEE Main, students can also check out previous year question papers to get an idea about the difficulty level of exam, nature of questions asked and a lot more. Read the complete article to get detailed information about JEE Main syllabus 2020.Section.Alpha-particle scattering experiment; Rutherford's model of atom; Bohr model, energy levels, hydrogen spectrum. Composition and size of nucleus, atomic masses, isotopes, isobars; isotones. Radioactivity-alpha, beta and gamma particles/rays and their properties; radioactive decay law. Mass-energy relation, mass defect; binding energy per nucleon and its variation with mass number, nuclear fission and fusion.Semiconductors; semiconductor diode: I-V characteristics in forward and reverse bias; diode as a rectifier; 1-V characteristics of LED, photodiode, solar cell and Zener diode; Zener diode as a voltage regulator. Junction transistor, transistor action, characteristics of a transistor; transistor as an amplifier (common emitter configuration) and oscillator. Logic gates (OR, AND, NOT, NAND and NOR). Transistor as a switch.Reflection and refraction of light at plane and spherical surfaces, mirror formula, Total internal reflection and its applications, Deviation and Dispersion of light by a prism, Lens Formula, Magnification, Power of a Lens, Combination of thin lenses in contact, Microscope and Astronomical Telescope (reflecting and refracting) and their magnifying powers.Wave optics: wavefront and Huygens' principle, Laws of reflection and refraction using Huygen's principle. Interference, Young's double slit experiment and expression for fringe width, coherent sources and sustained interference of light. Diffraction due to a single slit, width of central maximum. Resolving power of microscopes and astronomical telescopes, Polarisation, plane polarized light; Brewster's law, uses of plane polarized light and Polaroids.","National Testing Agency has released the official JEE Main 2020 syllabus on September 2. NTA has also released the syllabus and sample questions for the newly added Planning section in Paper 2 of JEE Main. Candidates can access the syllabus of JEE Main 2020 from the article below to know important topics and plan study accordingly. Students can check out the JEE Main 2020 syllabus for Physics, Chemistry and Mathematics through this page. Candidates preparing for JEE Main can go through the subject wise important concepts and topics through the JEE Main syllabus 2020. With the help of syllabus students appearing for JEE Main can plan their studies and focus on topics that will require more time and concepts which can be mastered easily. NTA has announced the JEE Main 2020 syllabus for both Paper 1 and Paper 2. Along with the syllabus of JEE Main, students can also check out previous year question papers to get an idea about the difficulty level of exam, nature of questions asked and a lot more. Read the complete article to get detailed information about JEE Main syllabus 2020.Section.Alpha-particle scattering experiment; Rutherford's model of atom; Bohr model, energy levels, hydrogen spectrum. Composition and size of nucleus, atomic masses, isotopes, isobars; isotones. Radioactivity-alpha, beta and gamma particles/rays and their properties; radioactive decay law. Mass-energy relation, mass defect; binding energy per nucleon and its variation with mass number, nuclear fission and fusion.Semiconductors; semiconductor diode: I-V characteristics in forward and reverse bias; diode as a rectifier; 1-V characteristics of LED, photodiode, solar cell and Zener diode; Zener diode as a voltage regulator. Junction transistor, transistor action, characteristics of a transistor; transistor as an amplifier (common emitter configuration) and oscillator. Logic gates (OR, AND, NOT, NAND and NOR). Transistor as a switch.Reflection and refraction of light at plane and spherical surfaces, mirror formula, Total internal reflection and its applications, Deviation and Dispersion of light by a prism, Lens Formula, Magnification, Power of a Lens, Combination of thin lenses in contact, Microscope and Astronomical Telescope (reflecting and refracting) and their magnifying powers.Wave optics: wavefront and Huygens' principle, Laws of reflection and refraction using Huygen's principle. Interference, Young's double slit experiment and expression for fringe width, coherent sources and sustained interference of light. Diffraction due to a single slit, width of central maximum. Resolving power of microscopes and astronomical telescopes, Polarisation, plane polarized light; Brewster's law, uses of plane polarized light and Polaroids.","Gravity","Electrochemical","Mathematics-RELATION & FUNCTION CHAPTER-1 INTRO","Circles"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MyCoursesTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MyCoursesTableViewCell", for: indexPath) as! MyCoursesTableViewCell
        cell.imageView?.image = UIImage(named: imgArr[indexPath.row])
        cell.AuthorName.text = authorNameArr[indexPath.row]
        cell.courseName.text = courseNameArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 106
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "courseInfo") as! courseInfoViewController
        vc.labelTxt = courseNameArr[indexPath.row]
        vc.videoC = videoCArr[indexPath.row]
        vc.txt = TxtViewArr[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setupNavBar() {
        var nav = self.navigationController?.navigationBar
        nav?.prefersLargeTitles = false
        UINavigationBar.appearance().tintColor = UIColor.black
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        SVProgressHUD.dismiss()
        // Do any additional setup after loading the view.
    }

}
