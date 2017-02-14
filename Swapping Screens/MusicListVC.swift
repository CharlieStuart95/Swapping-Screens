//
//  MusicListVC.swift
//  Swapping Screens
//
//  Created by Charlie Stuart on 14/02/2017.
//  Copyright © 2017 Charlie Stuart. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func loadThirdScreenPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "PlaySongSegue", sender: "Send Me On My Way")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            
            if let song = sender as? String{
                destination.selectedSong = song
            }
            
        }
    }
}
