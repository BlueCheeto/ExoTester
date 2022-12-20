//
//  ViewController.swift
//  ExoTester
//
//  Created by Oscar Schott on 11/24/22.
//

import UIKit
import CoreBluetooth
import QuartzCore

class ViewController: UIViewController, BluetoothSerialDelegate {
    func serialDidChangeState() {
        
    }
    
    func serialDidDisconnect(_ peripheral: CBPeripheral, error: NSError?) {
        
    }
    
    
    //@IBOutlet weak var terminalTextView: UITextView!
    
    private let connectButton: UIButton = {
        let connectButton = UIButton()
        connectButton.backgroundColor = .clear
        connectButton.setTitle("Connect Device", for: .normal)
        connectButton.setTitleColor(.white, for: .normal)
        connectButton.layer.cornerRadius = 20
        connectButton.layer.borderWidth = 2
        connectButton.layer.borderColor = UIColor.white.cgColor
        return connectButton
    }()
    
    private let romTextField: UITextField = {
        let romTextField = UITextField()
        romTextField.backgroundColor = .clear
        romTextField.placeholder = "  Enter ROM"
        romTextField.textColor = .white
        romTextField.layer.cornerRadius = 20
        romTextField.layer.borderWidth = 2
        romTextField.layer.borderColor = UIColor.white.cgColor
        //romTextField.delegate = self
        return romTextField
    }()
    
    /*private let terminalTextView: UITextView = {
        let terminalTextView = UITextView()
        terminalTextView.backgroundColor = .clear
        terminalTextView.textColor = .white
        
        return terminalTextView
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(connectButton)
        view.addSubview(romTextField)
        connectButton.addTarget(self, action: #selector(didTapConnectButton), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        connectButton.frame = CGRect(x: 40,
                                     y: view.frame.size.height-60-view.safeAreaInsets.bottom,
                                     width: view.frame.size.width-80,
                                     height: 40
                                    )
        romTextField.frame = CGRect(x: 40,
                                        y: view.frame.size.height-300-view.safeAreaInsets.bottom,
                                        width: view.frame.size.width-80,
                                        height: 40
                                        )
    }
    
    @objc func didTapConnectButton() {
        
    }

}

