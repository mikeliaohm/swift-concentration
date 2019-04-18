//
//  ConcentrationThemeChooserViewController.swift
//  concentration
//
//  Created by Mike Liao on 2019/4/18.
//  Copyright © 2019 Hsin-Min Liao. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {
    
    let themes = [
        "Sports": "💇🏼‍♀️🦸🏽‍♂️🧛🏾‍♂️👨🏼‍🔧👷‍♀️👮‍♂️👨‍👧‍👦👩‍👩‍👧‍👧",
        "Animals": "🐰🐽🐦🐥🙈🐨🐯🐱",
        "Faces": "🧐🤬👹😻😨😱🥶🥰😇"
    ]
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
}
