//
//  ViewController.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import UIKit

typealias FeedsDataSource = UICollectionViewDiffableDataSource<FeedsManager.Section, Stock>


class NewsFeedsAndStockTickerViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    private var dataSource: FeedsDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupView()
    }
    
    private func setupView() {
        
//        collectionView.register(TitleHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TitleHeaderView.reuseIdentifier)
        
        collectionView.collectionViewLayout = configureCollectionViewLayout()
        configureDataSource()
        configureSnapshot()
        collectionView.delegate = self
        self.navigationController?.hidesBarsOnSwipe = true
    }


}



// MARK: - Collection View -

extension NewsFeedsAndStockTickerViewController {
    func configureCollectionViewLayout() -> UICollectionViewCompositionalLayout {
        let sectionProvider = { (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            var section: NSCollectionLayoutSection?
            
            switch sectionIndex {
            case 0:
                section = self.getStockTickerSection()
            case 1:
                section = self.getNewsFeedSection()
            default:
                section = self.getOthersNewsFeedSection()
            }
            
            return section
        }
        
        return UICollectionViewCompositionalLayout(sectionProvider:  sectionProvider)
    }
    
    private func getStockTickerSection() -> NSCollectionLayoutSection? {
        //create item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
        
        //create group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .fractionalHeight(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //create section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        return section
    }
    
    private func getNewsFeedSection() -> NSCollectionLayoutSection? {
        //create item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        //create group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .fractionalHeight(0.2))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //create section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        section.boundarySupplementaryItems = getHeader()
        
        return section
    }
    
    private func getOthersNewsFeedSection() -> NSCollectionLayoutSection? {
        //create item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        
        //create group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.3), heightDimension: .fractionalHeight(0.22))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        //create section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        section.boundarySupplementaryItems = getHeader()
        
        return section
    }
    
    private func getHeader() -> [NSCollectionLayoutBoundarySupplementaryItem] {
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(44))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .topLeading)
        
        return [sectionHeader]
    }
}


// MARK: - Diffable Data Source -

extension NewsFeedsAndStockTickerViewController {
    
    func configureDataSource() {
        dataSource = FeedsDataSource(collectionView: collectionView) { (collectionView: UICollectionView, indexPath: IndexPath, stock: Stock) -> UICollectionViewCell? in
            
            let reuseIdentifier: String
            
            switch indexPath.section {
            case 0: reuseIdentifier =  StockCell.reuseIdentifier
//            case 1: reuseIdentifier = PreviewCell.reuseIdentifier
//            case 2: reuseIdentifier = RecomentationsCell.reuseIdentifier
            default: reuseIdentifier = StockCell.reuseIdentifier
            }
            
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as?  StockCell else {
                return nil
            }
            

            let section = FeedsManager.Section.allCases[indexPath.section]
            cell.showStock(stock: FeedsManager.feeds[section]?[indexPath.item] as! Stock)
            
            
            return cell
        }
        
//        dataSource.supplementaryViewProvider = { [weak self] (collectionView: UICollectionView, kind: String, indextPath: IndexPath) -> UICollectionReusableView? in
//
//            if let self = self, let headerSupplementaryView =
//                collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader
//                                                                , withReuseIdentifier: TitleHeaderView.reuseIdentifier, for: indextPath) as? TitleHeaderView {
//                let section = self.dataSource.snapshot().sectionIdentifiers[indextPath.section]
//                headerSupplementaryView.textLabel.text = section.rawValue
//
//                return headerSupplementaryView
//            }
//            return nil
//        }
    }
    
    
    func configureSnapshot() {
        var currentSnapshot = NSDiffableDataSourceSnapshot<FeedsManager.Section, Stock> ()
        
        FeedsManager.Section.allCases.forEach{ collection in
            currentSnapshot.appendSections([collection])
            if let feeds = FeedsManager.feeds[collection] {
                currentSnapshot.appendItems(feeds as! [Stock])
            }
        }
        
        dataSource.apply(currentSnapshot, animatingDifferences: false)
    }
    
    
//    func configureSnapshot() {
//        var currentSnapshot = NSDiffableDataSourceSnapshot<FeedsManager.Section, Stock> ()
//
//        FeedsManager.Section.allCases.forEach{ collection in
//            currentSnapshot.appendSections([collection])
//            if let feed = FeedsManager.feeds[collection] {
//                currentSnapshot.appendItems(feed)
//            }
//        }
//
//        dataSource.apply(currentSnapshot, animatingDifferences: false)
//    }
}

// MARK: - UIColeectionViewDelegate -

extension NewsFeedsAndStockTickerViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let stock = dataSource.itemIdentifier(for: indexPath)
        print(stock?.stock ?? "ovietitle is nil")
    }
}

