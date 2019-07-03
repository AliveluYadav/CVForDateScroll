//
//  ViewController.swift
//  CollectionViewForDate
//
//  Created by LetMeCall Corp on 08/02/19.
//  Copyright © 2019 LetMeCall Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
  
    var dayNameArry = [String]()
    var datesArry = [Int]()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cal = Calendar.current
        var startDate = cal.startOfDay(for: Date())
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE"

        for i in 1 ... 7 {
            let date = cal.component(.day, from: startDate)
            datesArry.append(date)
            startDate = cal.date(byAdding: .day, value: +1, to: startDate)!
            let dayName = dateFormatter.string(from: startDate-1)
            dayNameArry.append(dayName)

        }
        print(dayNameArry)
        print(datesArry)

        
//        self.collectionView.register(DateCell.self, forCellWithReuseIdentifier: "cell")
//    collectionView.register(UINib(nibName: "DateCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        // Do any additional setup after loading the view, typically from a nib.
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.datesArry.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.dayLbl.text = dayNameArry[indexPath.row]
        cell.dateLbl.text = String(datesArry[indexPath.row])

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
             cell.isSelected = true

    }
}

