//
//  ViewController.swift
//  myCalc
//
//  Created by Ruslan Dalgatov on 17.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    
    let resultLabel = UILabel()
    let viewButtons = UIView()
    
    
    var firstNumber: Double = 0
    var resultNumber: Double = 0

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonDistant: CGFloat = view.frame.size.width / 4
        let buttonSize = buttonDistant - 15
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        view.addSubview(viewButtons)
        view.addSubview(resultLabel)
        
        
        
        resultLabel.text = ""
        resultLabel.font = UIFont.systemFont(ofSize: 80)
        resultLabel.textColor = .white
        resultLabel.layer.borderWidth = 1
        resultLabel.textAlignment = .right
        resultLabel.backgroundColor = .black
        resultLabel.snp.makeConstraints { maker in
            maker.right.equalToSuperview().inset(20)
            maker.left.equalToSuperview().inset(10)
            maker.height.equalTo(150)
            maker.top.equalToSuperview().inset(150)
        }
        

        viewButtons.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        viewButtons.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(300)
            make.left.equalToSuperview().inset(0)
            make.right.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
        }
        
        let buttonClear = UIButton(type: .system)
        viewButtons.addSubview(buttonClear)
        buttonClear.layer.cornerRadius = 40
        buttonClear.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonClear.setTitle("AC", for: .normal)
        buttonClear.setTitleColor(.black, for: .normal)
        buttonClear.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        buttonClear.snp.makeConstraints { make in
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        buttonClear.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
        
        let buttonInvers = UIButton(type: .system)
        viewButtons.addSubview(buttonInvers)
        buttonInvers.layer.cornerRadius = 40
        buttonInvers.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonInvers.setTitleColor(.black, for: .normal)
        buttonInvers.setTitle("+/-", for: .normal)
        buttonInvers.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        buttonInvers.snp.makeConstraints { make in
            make.left.equalTo(buttonClear).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        
        let buttonPersent = UIButton(type: .system)
        viewButtons.addSubview(buttonPersent)
        buttonPersent.layer.cornerRadius = 40
        buttonPersent.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonPersent.setTitleColor(.black, for: .normal)
        buttonPersent.setTitle("%", for: .normal)
        buttonPersent.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        buttonPersent.snp.makeConstraints { make in
            make.left.equalTo(buttonInvers).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        
        let buttonDelenie = UIButton(type: .system)
        viewButtons.addSubview(buttonDelenie)
        buttonDelenie.layer.cornerRadius = 40
        buttonDelenie.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonDelenie.setTitle("/", for: .normal)
        buttonDelenie.backgroundColor = #colorLiteral(red: 1, green: 0.6235294118, blue: 0.03921568627, alpha: 1)
        buttonDelenie.setTitleColor(.white, for: .normal)
        buttonDelenie.snp.makeConstraints { make in
            make.left.equalTo(buttonPersent).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        
        let button7 = UIButton(type: .system)
        viewButtons.addSubview(button7)
        button7.tag = 7
        button7.layer.cornerRadius = 40
        button7.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button7.setTitle("7", for: .normal)
        button7.setTitleColor(.white, for: .normal)
        button7.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button7.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button7.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        
        let button8 = UIButton(type: .system)
        viewButtons.addSubview(button8)
        button8.tag = 8
        button8.layer.cornerRadius = 40
        button8.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button8.setTitle("8", for: .normal)
        button8.setTitleColor(.white, for: .normal)
        button8.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button8.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant)
            make.left.equalTo(button7).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button8.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)

        let button9 = UIButton(type: .system)
        viewButtons.addSubview(button9)
        button9.tag = 9
        button9.layer.cornerRadius = 40
        button9.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button9.setTitle("9", for: .normal)
        button9.setTitleColor(.white, for: .normal)
        button9.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button9.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant)
            make.left.equalTo(button8).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button9.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let buttonYmnoj = UIButton(type: .system)
        viewButtons.addSubview(buttonYmnoj)
        buttonYmnoj.layer.cornerRadius = 40
        buttonYmnoj.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonYmnoj.setTitle("x", for: .normal)
        buttonYmnoj.backgroundColor = #colorLiteral(red: 1, green: 0.6235294118, blue: 0.03921568627, alpha: 1)
        buttonYmnoj.setTitleColor(.white, for: .normal)
        buttonYmnoj.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant)
            make.left.equalTo(button9).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        
        
        let button4 = UIButton(type: .system)
        viewButtons.addSubview(button4)
        button4.tag = 4
        button4.layer.cornerRadius = 40
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button4.setTitle("4", for: .normal)
        button4.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button4.setTitleColor(.white, for: .normal)
        button4.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*2)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button4.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let button5 = UIButton(type: .system)
        viewButtons.addSubview(button5)
        button5.tag = 5
        button5.layer.cornerRadius = 40
        button5.setTitleColor(.white, for: .normal)
        button5.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button5.setTitle("5", for: .normal)
        button5.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button5.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*2)
            make.left.equalTo(button4).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button5.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let button6 = UIButton(type: .system)
        viewButtons.addSubview(button6)
        button6.tag = 6
        button6.layer.cornerRadius = 40
        button6.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button6.setTitle("6", for: .normal)
        button6.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button6.setTitleColor(.white, for: .normal)
        button6.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*2)
            make.left.equalTo(button5).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button6.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let buttonMinus = UIButton(type: .system)
        viewButtons.addSubview(buttonMinus)
        buttonMinus.layer.cornerRadius = 40
        buttonMinus.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonMinus.setTitle("-", for: .normal)
        buttonMinus.backgroundColor = #colorLiteral(red: 1, green: 0.6235294118, blue: 0.03921568627, alpha: 1)
        buttonMinus.setTitleColor(.white, for: .normal)
        buttonMinus.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*2)
            make.left.equalTo(button6).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
//        buttonMinus.addTarget(self, action: #selector(), for: .touchUpInside)
        
        
        let button1 = UIButton(type: .system)
        viewButtons.addSubview(button1)
        button1.tag = 1
        button1.layer.cornerRadius = 40
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button1.setTitle("1", for: .normal)
        button1.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button1.setTitleColor(.white, for: .normal)
        button1.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*3)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button1.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let button2 = UIButton(type: .system)
        viewButtons.addSubview(button2)
        button2.tag = 2
        button2.layer.cornerRadius = 40
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button2.setTitle("2", for: .normal)
        button2.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button2.setTitleColor(.white, for: .normal)
        button2.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*3)
            make.left.equalTo(button1).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button2.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let button3 = UIButton(type: .system)
        viewButtons.addSubview(button3)
        button3.tag = 3
        button3.layer.cornerRadius = 40
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button3.setTitle("3", for: .normal)
        button3.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button3.setTitleColor(.white, for: .normal)
        button3.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*3)
            make.left.equalTo(button2).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        button3.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let buttonPlus = UIButton(type: .system)
        viewButtons.addSubview(buttonPlus)
        buttonPlus.layer.cornerRadius = 40
        buttonPlus.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonPlus.setTitle("+", for: .normal)
        buttonPlus.backgroundColor = #colorLiteral(red: 1, green: 0.6235294118, blue: 0.03921568627, alpha: 1)
        buttonPlus.setTitleColor(.white, for: .normal)
        buttonPlus.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*3)
            make.left.equalTo(button3).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }


        let button0 = UIButton(type: .system)
        viewButtons.addSubview(button0)
        button0.tag = 0
        button0.layer.cornerRadius = 40
        button0.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        button0.setTitle("0", for: .normal)
        button0.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        button0.setTitleColor(.white, for: .normal)
        button0.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*4)
            make.width.equalTo(buttonSize*2 + 15)
            make.height.equalTo(buttonSize)
        }
        button0.addTarget(self, action: #selector(pressNumber), for: .touchUpInside)
        
        let buttonTochka = UIButton(type: .system)
        viewButtons.addSubview(buttonTochka)
        buttonTochka.layer.cornerRadius = 40
        buttonTochka.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonTochka.setTitle(",", for: .normal)
        buttonTochka.backgroundColor = #colorLiteral(red: 0.3490196078, green: 0.3490196078, blue: 0.3647058824, alpha: 1)
        buttonTochka.setTitleColor(.white, for: .normal)
        buttonTochka.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*4)
            make.left.equalTo(button0).inset(buttonDistant*2)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        
        let buttonRovno = UIButton(type: .system)
        viewButtons.addSubview(buttonRovno)
        buttonRovno.layer.cornerRadius = 40
        buttonRovno.titleLabel?.font = UIFont.boldSystemFont(ofSize: 35)
        buttonRovno.setTitle("=", for: .normal)
        buttonRovno.backgroundColor = #colorLiteral(red: 1, green: 0.6235294118, blue: 0.03921568627, alpha: 1)
        buttonRovno.setTitleColor(.white, for: .normal)
        buttonRovno.snp.makeConstraints { make in
            make.top.equalTo(buttonDistant*4)
            make.left.equalTo(buttonTochka).inset(buttonDistant)
            make.width.equalTo(buttonSize)
            make.height.equalTo(buttonSize)
        }
        buttonRovno.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
        

         
    }
    
    
    @objc func clearResult() {
        resultLabel.text = "0"
        firstNumber = 0
        
    }
    
    @objc func pressNumber( sender: UIButton){
        resultLabel.text = resultLabel.text! + String(sender.tag)
        firstNumber = Double(resultLabel.text!)!
    }
    
}

