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
    private var koder1: UIView.Labels?
    private var koder2: UIView.Labels?
    private var koder3: UIView.Labels?
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
        
        let koder1 = UIView.Labels(frame: .zero)
        koder1.text = "Koder1 - me gusta el color koderColor"
        koder1.textColor = UIColor.labelColor
        view.addSubview(koder1)
        self.giselaCamacho = koder1
        
        let koder2 = UIView.Labels(frame: .zero)
        koder2.text = "Koder2 - me gusta el color koderColor"
        koder2.textColor = UIColor.labelColor
        view.addSubview(koder2)
        self.giselaCamacho = koder2
        
        let koder3 = UIView.Labels(frame: .zero)
        koder3.text = "Koder3 - me gusta el color koderColor"
        koder3.textColor = UIColor.labelColor
        view.addSubview(koder3)
        self.giselaCamacho = koder3
        
        let koder4 = UIView.Labels(frame: .zero)
        koder4.text = "Koder4 - me gusta el color koderColor"
        koder4.textColor = UIColor.labelColor
        view.addSubview(koder4)
        self.giselaCamacho = koder4
        
        let labelStackView1 = UIStackView(frame: .zero)
        labelStackView1.translatesAutoresizingMaskIntoConstraints = false
        
        let labelArray1: [UILabel] = [giselaCamacho, koder1, koder2, koder3, koder4]
        
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
