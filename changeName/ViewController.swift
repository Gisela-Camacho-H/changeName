//
//  ViewController.swift
//  changeName
//
//  Created by Gisela Camacho on 23/06/23.
//

import UIKit

// MARK: ViewController class
final class ViewController: UIViewController {
  // MARK: - Properties
    private var giselaCamacho: UIView.Labels?
    private var Miguel: UIView.Labels?
    private var koder1: UIView.Labels?
    private var fernando: UIView.Labels?
    private var koder3: UIView.Labels?
    private var victorC: UIView.Labels?
    private var koder2: UIView.Labels?
    private var rose: UIView.Labels?
    private var koder4: UIView.Labels?
    private var labelStackView1: UIStackView?

  // MARK: - Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black
        initializeInterface()
    }

  // MARK: - Private methods
    func initializeInterface() {

        let giselaCamacho = UIView.Labels(frame: .zero)
        giselaCamacho.text = "Gisela - me gusta el color verde"
        giselaCamacho.textColor = UIColor.labelColor
        view.addSubview(giselaCamacho)
        self.giselaCamacho = giselaCamacho
        
        let Miguel = UIView.Labels(frame: .zero)
        Miguel.text = "Miguel - me gusta el color Azul"
        Miguel.textColor = UIColor.labelColor
        view.addSubview(Miguel)
        self.giselaCamacho = Miguel
        
        let fernando = UIView.Labels(frame: .zero)
        fernando.text = "Fernando - me gusta el color Negro"
        fernando.textColor = UIColor.labelColor
        view.addSubview(fernando)
        self.giselaCamacho = fernando
        
        let rose = UIView.Labels(frame: .zero)
        rose.text = "Rose - me gusta el color purple"
        rose.textColor = UIColor.labelColor
        view.addSubview(rose)
        self.giselaCamacho = rose
        
        let victorC = UIView.Labels(frame: .zero)
        victorC.text = "Victor - me gusta el color azul"
        victorC.textColor = UIColor.cyan
        view.addSubview(victorC)
        self.victorC = victorC
        
        let labelStackView1 = UIStackView(frame: .zero)
        labelStackView1.translatesAutoresizingMaskIntoConstraints = false
        

        let labelArray1: [UILabel] = [giselaCamacho, Miguel, fernando, rose, victorC]
        
        labelStackView1.axis = .vertical
        labelStackView1.spacing = Constants.padding
        labelStackView1.alignment = .fill
        labelStackView1.distribution = .fillEqually
        labelArray1.forEach {label1 in
            labelStackView1.addArrangedSubview(label1)
        }
        
        view.addSubview(labelStackView1)
        self.labelStackView1 = labelStackView1
        
        NSLayoutConstraint.activate([labelStackView1.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.topPadding)])
        labelArray1.forEach {label1 in
            label1.heightAnchor.constraint(equalToConstant: Constants.height/20).isActive = true
            label1.widthAnchor.constraint(equalToConstant: Constants.width).isActive = true
            label1.textAlignment = .center
        }
    }
}
