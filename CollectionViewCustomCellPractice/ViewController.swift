//
//  ViewController.swift
//  CollectionViewCustomCellPractice
//
//  Created by tlswo on 2/19/25.
//

import UIKit

class ViewController: UIViewController {
    
    let collectionView = CollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        addChild(collectionView)
        view.addSubview(collectionView.view)
        collectionView.didMove(toParent: self)
    }

}

#Preview {
    ViewController()
}
