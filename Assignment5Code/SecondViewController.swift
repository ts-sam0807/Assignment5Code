//
//  SecondViewController.swift
//  Assignment5Code
//
//  Created by Ts SaM on 28/4/2023.
//

import UIKit

class SecondViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    let appleImageView = UIImageView(image: UIImage(named: "apple_logo"))
    appleImageView.translatesAutoresizingMaskIntoConstraints = false
    appleImageView.contentMode = .scaleAspectFit
    appleImageView.clipsToBounds = true
    
    let dotsImageView = UIImageView(image: UIImage(named: "dots"))
    dotsImageView.translatesAutoresizingMaskIntoConstraints = false
    dotsImageView.contentMode = .scaleAspectFit
    dotsImageView.clipsToBounds = true
    
    let appleLabel = UILabel()
    appleLabel.translatesAutoresizingMaskIntoConstraints = false
    appleLabel.text = "Apple"
    appleLabel.textAlignment = .left
    appleLabel.textColor = .black
    appleLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
    
    let topStackView = UIStackView(arrangedSubviews: [appleImageView, appleLabel, dotsImageView])
    topStackView.translatesAutoresizingMaskIntoConstraints = false
    topStackView.axis = .horizontal
    topStackView.alignment = .center
    topStackView.distribution = .fill
    view.addSubview(topStackView)
    
    // Set horizontal stack view constraints
    NSLayoutConstraint.activate([
      topStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
      topStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
      topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      appleImageView.widthAnchor.constraint(equalToConstant: 40),
      appleImageView.heightAnchor.constraint(equalToConstant: 40),
      dotsImageView.widthAnchor.constraint(equalToConstant: 40),
      dotsImageView.heightAnchor.constraint(equalToConstant: 40)
    ])
    
    
    let mainImageView = UIImageView()
    mainImageView.translatesAutoresizingMaskIntoConstraints = false
    mainImageView.clipsToBounds = true
    mainImageView.contentMode = .scaleAspectFill
    mainImageView.image = UIImage(named: "open_mac")
    view.addSubview(mainImageView)
    
    NSLayoutConstraint.activate([
      //      mainImageView.widthAnchor.constraint(equalTo: view.widthAnchor),
      mainImageView.heightAnchor.constraint(equalTo: mainImageView.widthAnchor),
      mainImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      mainImageView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 10),
      mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
      mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
    ])
    
    
    let iconImageView1 = UIImageView(image: UIImage(named: "heart"))
    let iconImageView2 = UIImageView(image: UIImage(named: "message"))
    let iconImageView3 = UIImageView(image: UIImage(named: "sent"))
    let iconImageView4 = UIImageView(image: UIImage(named: "bookmark"))
    [iconImageView1, iconImageView2, iconImageView3, iconImageView4].forEach { imageView in
      imageView.translatesAutoresizingMaskIntoConstraints = false
      imageView.contentMode = .scaleAspectFit
      imageView.clipsToBounds = true
      imageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
      imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    let actionStackView = UIStackView(arrangedSubviews: [iconImageView1, iconImageView2, iconImageView3])
    actionStackView.translatesAutoresizingMaskIntoConstraints = false
    actionStackView.axis = .horizontal
    actionStackView.alignment = .leading
    actionStackView.distribution = .equalSpacing
    actionStackView.spacing = 10
    view.addSubview(actionStackView)
    view.addSubview(iconImageView4)
    
    NSLayoutConstraint.activate([
      actionStackView.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 10),
      actionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
      iconImageView4.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 10),
      iconImageView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
    ])
    
    
    let likedLabel1 = UILabel()
    likedLabel1.text = "Liked by"
    likedLabel1.font = UIFont.systemFont(ofSize: 17, weight: .regular)

    let likedLabel2 = UILabel()
    likedLabel2.text = "apple"
    likedLabel2.font = UIFont.systemFont(ofSize: 17, weight: .bold)

    let labelStackView = UIStackView(arrangedSubviews: [likedLabel1, likedLabel2])
    labelStackView.translatesAutoresizingMaskIntoConstraints = false
    labelStackView.axis = .horizontal
    labelStackView.alignment = .leading
    labelStackView.distribution = .equalSpacing
    labelStackView.spacing = 10
    view.addSubview(labelStackView)

    NSLayoutConstraint.activate([
      labelStackView.topAnchor.constraint(equalTo: actionStackView.bottomAnchor, constant: 10),
      labelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
    ])
    
    
    
    
    
    
  }
}
