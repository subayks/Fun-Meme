//
//  OnBoardingViewController.swift
//  Fun Meme
//
//  Created by Subendran on 07/08/21.
//  Copyright © 2021 Subendran. All rights reserved.
//

import UIKit
import paper_onboarding

class OnBoardingViewController: UIViewController {

    @IBOutlet weak var buttonSkip: UIButton!
    @IBOutlet weak var onBoardingView: PaperOnboarding!
    static let titleFont = UIFont(name: "Chalkduster", size: 36.0) ?? UIFont.boldSystemFont(ofSize: 36.0)
    static let descriptionFont = UIFont(name: "MarkerFelt-Wide", size: 14.0) ?? UIFont.systemFont(ofSize: 35.0)
    
    let itemList = [
    OnboardingItemInfo(informationImage: UIImage(named: "SmilyLogo") ?? UIImage(),
                       title: "Have Fun",
                       description: "Get updated news in meme format",
                       pageIcon: UIImage(named: "") ?? UIImage(),
                       color: UIColor.black,
                       titleColor: UIColor.white,
                       descriptionColor: UIColor.init(red: 100, green: 83.4, blue: 0, alpha: 1),
                       titleFont: titleFont,
                       descriptionFont: descriptionFont),
    OnboardingItemInfo(informationImage: UIImage(named: "notification") ?? UIImage(),
                       title: "Notification",
                       description: "Enable notificationn get latest memes on time",
                       pageIcon: UIImage(named: "") ?? UIImage(),
                       color: UIColor.black,
                       titleColor: UIColor.white,
                       descriptionColor: UIColor.yellow,
                       titleFont: titleFont,
                       descriptionFont: descriptionFont),
    OnboardingItemInfo(informationImage: UIImage(named: "party") ?? UIImage(),
                       title: "yAy - let's Fun",
                       description: "let's Get Started",
                       pageIcon: UIImage(named: "") ?? UIImage(),
                       color: UIColor.black,
                       titleColor: UIColor.white,
                       descriptionColor: UIColor.init(red: 100, green: 83.4, blue: 0, alpha: 1),
                       titleFont: titleFont,
                       descriptionFont: descriptionFont),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        self.onBoardingView.dataSource = self
        self.onBoardingView.delegate = self
        self.buttonSkip.layer.cornerRadius = 12
        self.buttonSkip.layer.borderWidth = 1
        self.buttonSkip.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func buttonSkipAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "MemeDashBoardViewController") as? MemeDashBoardViewController else {
                   return
               }
               self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension OnBoardingViewController: PaperOnboardingDataSource {
    func onboardingItemsCount() -> Int {
        return self.itemList.count
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        return self.itemList[index]
    }
}

extension OnBoardingViewController: PaperOnboardingDelegate {
    func onboardingWillTransitonToIndex(_ index: Int) {
        if  index == self.itemList.count - 1 {
            self.buttonSkip.setTitle(" Get Started ", for: .normal)
        }
    }
}
