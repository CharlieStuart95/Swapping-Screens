//
//  PlaySongVC.swift
//  Swapping Screens
//
//  Created by Charlie Stuart on 14/02/2017.
//  Copyright © 2017 Charlie Stuart. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    private var _selectedSong:String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        }
        set{
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = _selectedSong
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
