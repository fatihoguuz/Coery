//
//  ViewController.swift
//  Coery
//
//  Created by Fatih Oğuz on 17.08.2024.
//

import UIKit

class LaunchFirst: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
 
    func setupUI() {
        backgroundImageView()
        frontImageView()
        imageView()
        barLabel()
        frontLabel()
        SecondLabel()
        nextButton()
    }
    func backgroundImageView() {
        let imageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 400, height: 900))
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
    }
    func frontImageView(){
        let fimageView = UIImageView(frame: CGRect.init(x: 0, y: view.frame.height / 1.7, width: 415, height: 500))
        fimageView.image = UIImage(named: "white")
        fimageView.layer.cornerRadius = 30
        fimageView.layer.masksToBounds = true
        fimageView.contentMode = .scaleAspectFill
        view.addSubview(fimageView)
        self.view.bringSubviewToFront(fimageView)
    }
    
    func imageView() {
        let imageView = UIImageView(frame: CGRect.init(x: view.frame.width / 5 - 20, y: view.frame.height / 6, width: 300  , height: 300))
        imageView.image = UIImage(named: "launchFirst")
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
    }
    func barLabel() {
        let label = UILabel(frame: CGRect(x: view.frame.width / 3 - 25, y: 70, width: 250, height: 30))
        label.text = " ⏰ Yapılacaklar"
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.textColor = .white
        view.addSubview(label)
    }
    func frontLabel() {
        let label = UILabel(frame: CGRect(x: 39, y: 580, width: 400, height: 40))
        label.text = "Çalışma Performansını Takip Et"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .purple
        view.addSubview(label)
    }
    func SecondLabel() {
        let label = UILabel(frame: CGRect(x: 39, y: 640, width: 420, height: 70))
        label.text = "Günlük yapacağın şeyleri uygulamaya kaydet ve verimliliğini gözlemle"
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        label.textColor = .darkGray
        view.addSubview(label)
    }
    func nextButton() {
        let button = UIButton(frame: CGRect(x: 300, y: 770, width: 90, height: 55))
        button.layer.cornerRadius = 25
        button.setTitle("İleri", for: .normal)
        button.backgroundColor = .purple
        button.tintColor = .white
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button)
        
    }
    @objc func buttonAction() {
        let goHomeVC = HomeVC()
        self.navigationController?.pushViewController(goHomeVC, animated: true)
    }
}

