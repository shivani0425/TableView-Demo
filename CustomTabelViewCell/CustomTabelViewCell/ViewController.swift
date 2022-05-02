

import UIKit

class ViewController: UIViewController, UITableViewDataSource{

    @IBOutlet weak var myTableView: UITableView!
    
    var animalArray = ["Dog", "Cat", "Monkey", "Lion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTableView.dataSource = self
        
        let myTableCellNib = UINib(nibName: "CustomTableViewCell", bundle: Bundle.main)
        self.myTableView.register(myTableCellNib, forCellReuseIdentifier: "CustomTableViewCell")
        
    }


    //MARK: UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = myTableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell {
            
            cell.animalNameLabel.text = animalArray[indexPath.row]
        
            return cell
        }
       return UITableViewCell()
        
    }

    
    
    
}

