//
//  HomeVC.swift
//  Coery
//
//  Created by Fatih Oğuz on 18.08.2024.
//

import Foundation
import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .systemIndigo
        setupFrontImageView()
        self.navigationItem.hidesBackButton = true
        
        setupFlyView(frame: CGRect(x: 20, y: 270, width: 180, height: 230), named: "white", corner: 30, text: "⏰ Yapılacaklar")
        setupFlyView(frame: CGRect(x: 215, y: 270, width: 180, height: 180), named: "white", corner: 30, text: "📕 Kitap")
        setupFlyView(frame: CGRect(x: 20, y: 515, width: 180, height: 220), named: "white", corner: 30, text: "💦 Su")
        setupFlyView(frame: CGRect(x: 215, y: 463, width: 180, height: 170), named: "white", corner: 30, text: "💪 Spor")
        setupFlyView(frame: CGRect(x: 215, y: 647, width: 180, height: 170), named: "white", corner: 30, text: "🔗 Alışkanlık")
        setupFlyView(frame: CGRect(x: 30, y: 90, width: 45, height: 45), named: "user", corner: 10, text: "")
        setupFlyView(frame: CGRect(x: 37, y: 330, width: 150, height: 150), named: "yap", corner: 1, text: "")
        setupFlyView(frame: CGRect(x: 230, y: 330, width: 150, height: 100), named: "kit", corner: 1, text: "")
        
        
        
        addLabel(frame: CGRect(x: 30, y: 150, width: 200, height: 30), text: "18 Ağustos 2024", font: UIFont.systemFont(ofSize: 14), color: UIColor.lightGray)
        addLabel(frame: CGRect(x: 30, y: 190, width: 300, height: 50), text: "İyi günler 🙌", font: UIFont.boldSystemFont(ofSize: 20), color: UIColor.white)
        addLabel(frame: CGRect(x: 35, y: 590, width: 150, height: 70), text: "Bugünkü ihtiyacını karşılamak için 2.0 litre daha su içmelisin", font: UIFont.systemFont(ofSize: 15), color: UIColor.black)
        addLabel(frame: CGRect(x: 240, y: 530, width: 50, height: 59), text: " 0 dakika" , font: UIFont.systemFont(ofSize: 15), color: UIColor.black)
        addLabel(frame: CGRect(x: 240, y: 720, width: 65, height: 60), text: " 0 Alışkanlık" , font: UIFont.systemFont(ofSize: 15), color: UIColor.black)
    }
    
    func setupFrontImageView() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: view.frame.height / 2.5, width: 415, height: 700))
        imageView.image = UIImage(named: "gray")
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        view.bringSubviewToFront(imageView)
    }
    
    func setupFlyView(frame: CGRect, named: String, corner: Int , text: String ) {
        let imageView = UIImageView(frame: frame)
        imageView.image = UIImage(named: named)
        imageView.layer.cornerRadius = CGFloat(corner)
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        view.bringSubviewToFront(imageView)
        let label = UILabel(frame: CGRect(x: imageView.frame.minX + 20 ,y: imageView.frame.minY + 30,
                                          width: imageView.frame.width, height: 20))
        label.text = text
        label.textAlignment = .left
        label.textColor = .black
        view.addSubview(label)
        view.bringSubviewToFront(label)
        
        
    }
    func addLabel(frame:CGRect, text: String, font: UIFont, color: UIColor) {
        let label = UILabel(frame: frame)
        label.text = text
        label.font = font
        label.textColor = color
        label.layer.masksToBounds = true
        label.numberOfLines = 0
        view.addSubview(label)
    }
    
}
