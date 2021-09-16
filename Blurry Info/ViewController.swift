//
//  ViewController.swift
//  Blurry Info
//
//  Created by PassAggCoder@Reddit on 9/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var examples: [AddressInfo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        generateExamples()
        tableView.reloadData()
    }
    
    private func generateExamples() {
        examples.append(AddressInfo(title: "Blurry Ass Title 01", description: "A short blurry ass description", placeName: "A blurry ass address description?", placeAddress: "A blurry ass description or address relating to some kind of location"))
        examples.append(AddressInfo(title: "A Longer Blurry Ass Title For Some Reason 02", description: "This is a longer blurry ass description probalby describing some shit", placeName: "Blurry Ass 02", placeAddress: "This is a longer blurry ass description probably describing said blurry ass locaiton based point of interest."))
        examples.append(AddressInfo(title: "A Long Ass Blurry Title 03 because sometimes shit be long", description: "Reusing a previous blurry ass description: \"This is a blurry ass description, not really sure what goes here but it describes some blurry shit\"", placeName: "The Most Blurriest of Blurry Ass Place Name", placeAddress: "A place for all your blurry ass needs with only the blurriest of blurs available for purchase. No other store can offer these types of blur"))
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examples.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = "Example \(indexPath.row + 1)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showBlurryInfo", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let index = sender as? Int,
              let vc = segue.destination as? ShowViewController else { return }
        vc.index = index
        vc.example = examples[index]
    }
}


extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
