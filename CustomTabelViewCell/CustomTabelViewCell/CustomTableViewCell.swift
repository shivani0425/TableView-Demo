
import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
