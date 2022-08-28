import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var categoryList = [Category]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        
        // Added search Icon to right of navbar
        let button = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.search, target: self, action: nil)
        navigationItem.rightBarButtonItem = button
        button.tintColor = UIColor.black
        
        
        // Dummy List Data
        let espresso = Category(title: "Espresso Bazlı İçecekler", image: "espresso")
        let filteredCoffee = Category(title: "Filtre Kahveler", image: "filter")
        let turkishCoffee = Category(title: "Türk Kahvesi", image: "turkishCoffe")
        let refresha = Category(title: "Starbucks Refresha® Drinks", image: "refresha")
        let teavanaHotTea = Category(title: "Teavana™ Sıcak Çaylar", image: "teavana")
        let teavanaTeaLatte = Category(title: "Teavana™ Tea Latte", image: "tLatte")
        let coldTea = Category(title: "Buzlu Çaylar", image: "icedTea")
        let frappucinos = Category(title: "Frappuccino® Karışım İçecekler", image: "frappucino")
        let hotChocolate = Category(title: "Sıcak Çikolatalar", image: "hotCho")
        let bottledDrinks = Category(title: "Şişelenmiş İçecekler", image: "bottedled")
        
        let bakery = Category(title: "Fırından", image: "baked")
        let sandwich = Category(title: "Sandviçler", image: "sandwich")
        let salad = Category(title: "Salata Ve Parfeler", image: "salad")
        let snack = Category(title: "Atıştırmalıklar", image: "snack")
        
        let coffeeBean = Category(title: "Çekirdek Kahveler", image: "atHome")
        let via = Category(title: "VIA", image: "via")
        let tumbler = Category(title: "Her Zaman Seninle", image: "coffeEq")
        let cityMugs = Category(title: "Şehir Temalı Ürünler", image: "mugs")
        let brewingEquip = Category(title: "Demleme Ekipmanları", image: "brewingMet")
        
        
        
        categoryList.append(espresso)
        categoryList.append(filteredCoffee)
        categoryList.append(turkishCoffee)
        categoryList.append(refresha)
        categoryList.append(teavanaHotTea)
        categoryList.append(teavanaTeaLatte)
        categoryList.append(coldTea)
        categoryList.append(frappucinos)
        categoryList.append(hotChocolate)
        categoryList.append(bottledDrinks)
        categoryList.append(bakery)
        categoryList.append(sandwich)
        categoryList.append(salad)
        categoryList.append(snack)
        categoryList.append(coffeeBean)
        categoryList.append(via)
        categoryList.append(tumbler)
        categoryList.append(cityMugs)
        categoryList.append(brewingEquip)
        
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let categories = categoryList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryTableViewCell
        cell.selectionStyle = .none
        
        cell.categoryImage.image = UIImage(named: categories.image!)
        cell.categoryLabel.text = categories.title
        
        return cell
    }
}
