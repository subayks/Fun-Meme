//
//  MemeDashBoardViewController.swift
//  Fun Meme
//
//  Created by Subendran on 07/08/21.
//  Copyright © 2021 Subendran. All rights reserved.
//

import UIKit

class MemeDashBoardViewController: UIViewController {
    
    @IBOutlet weak var tableViewList: UITableView!
    @IBOutlet weak var segmentControlTypes: UISegmentedControl!
    let personName = ["Ram","Vignesh","Pradeep","Aswini","Veera","Madhan","Hari","Gowtham","Sakthi","Subay"]
    let imageName = ["Meme1","Meme2","Meme3","Meme4","Meme5","Meme6","Meme7","Meme8","Meme9","Meme10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MemeDashBoardViewController: UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return personName.count
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableViewList.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as! CategoryTableViewCell
            return cell
        } else {
            let cell = tableViewList.dequeueReusableCell(withIdentifier: "MemeListTableViewCell") as! MemeListTableViewCell
            cell.labelName.text = personName[indexPath.row]
            cell.imageViewMeme.image = UIImage.init(named: imageName[indexPath.row])
            return cell
        }
    }
}
