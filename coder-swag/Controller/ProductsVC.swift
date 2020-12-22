//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Memo Figueredo on 21/12/20.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
//    MARK: OUTLets
    @IBOutlet weak var productsCollection: UICollectionView!
    

//    variable que evita que se bloquee la app si los datos no existen presenta una matriz vacia
    
    private (set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
//    FUNCTION PASS DATA TO COLLECTIONView

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }

}
