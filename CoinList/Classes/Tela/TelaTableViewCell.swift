//
//  TelaTableViewCell.swift
//  Moeda Digital Super App
//
//  Created by Lucas Werner Kuipers on 14/04/2021.
//

import UIKit

public class TelaTableViewCell: UITableViewCell {

	@IBOutlet weak var nomeMoedaLabel: UILabel!
	
	public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
