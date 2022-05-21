//
//  FeedsManager.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import Foundation

struct FeedsManager {
    enum Section: String, CaseIterable {
        case STOCKTICKERS = "Stock Tickers"
//        case NEWSFEED = "NEWS Feed"
//        case POPULAR = "Popular on Netflix"
//        case ANIME = "Anime"
//        case CLASSIC = "Classic"
//        case DOCUMENTARIES = "Documentaries"
//        case DRAMAS = "Dramas"
//        case MUSIC = "Music"
    }
    
    static var feeds = [
        Section.STOCKTICKERS:  [
            Stock(stock: "FORD", price: 72.19042874981784),
            Stock(stock: "FORD", price: -211.5509976763925),
            Stock(stock: "NVDA", price: 30.999642050562386),
            Stock(stock: "NVDA", price: -150.5328741940824),
            Stock(stock: "AMD", price: -117.59246397277423),
            Stock(stock: "ACN", price: 70.81894630569406),
            Stock(stock: "NVDA", price: -247.83003439647567),
        ] ,
        /*Section.NEWSFEED:  [
            
            NewsFeed(author : "Issy Ronald, CNN",
                     title : "'God needs to come and explain it': How the football world reacted to Real Madrid's extraordinary Champions League semifinal victory",
                     description : "We have a score to settle, Liverpool star Mo Salah tweeted after Real Madrid staged an extraordinary late comeback against Manchester City to set up a clash with the Reds in the Champions League final on May 28.",
                     url : "https://www.cnn.com/2022/05/05/football/real-madrid-champions-league-reaction-liverpool-spt-intl/index.html",
                     urlToImage : "https://cdn.cnn.com/cnnnext/dam/assets/220504173124-11-champions-league-semifinal-real-madrid-manchester-city-super-tease.jpg",
                     publishedAt : "2022-05-05T10:06:14Z",
                     content : "(CNN)We have a score to settle, Liverpool star Mo Salah tweeted after Real Madrid staged an extraordinary late comeback against Manchester City to set up a clash with the Reds in the Champions Leag… [+2830 chars]"),
            
            NewsFeed(author : "Issy Ronald, CNN",
                     title : "'God needs to come and explain it': How the football world reacted to Real Madrid's extraordinary Champions League semifinal victory",
                     description : "We have a score to settle, Liverpool star Mo Salah tweeted after Real Madrid staged an extraordinary late comeback against Manchester City to set up a clash with the Reds in the Champions League final on May 28.",
                     url : "https://www.cnn.com/2022/05/05/football/real-madrid-champions-league-reaction-liverpool-spt-intl/index.html",
                     urlToImage : "https://cdn.cnn.com/cnnnext/dam/assets/220504173124-11-champions-league-semifinal-real-madrid-manchester-city-super-tease.jpg",
                     publishedAt : "2022-05-05T10:06:14Z",
                     content : "(CNN)We have a score to settle, Liverpool star Mo Salah tweeted after Real Madrid staged an extraordinary late comeback against Manchester City to set up a clash with the Reds in the Champions Leag… [+2830 chars]"),
            NewsFeed(author : "Issy Ronald, CNN",
                     title : "'God needs to come and explain it': How the football world reacted to Real Madrid's extraordinary Champions League semifinal victory",
                     description : "We have a score to settle, Liverpool star Mo Salah tweeted after Real Madrid staged an extraordinary late comeback against Manchester City to set up a clash with the Reds in the Champions League final on May 28.",
                     url : "https://www.cnn.com/2022/05/05/football/real-madrid-champions-league-reaction-liverpool-spt-intl/index.html",
                     urlToImage : "https://cdn.cnn.com/cnnnext/dam/assets/220504173124-11-champions-league-semifinal-real-madrid-manchester-city-super-tease.jpg",
                     publishedAt : "2022-05-05T10:06:14Z",
                     content : "(CNN) We have a score to settle, Liverpool star Mo Salah tweeted after Real Madrid staged an extraordinary late comeback against Manchester City to set up a clash with the Reds in the Champions Leag… [+2830 chars]"),
            
        ],
        
            Section.POPULAR:  [
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Ant Man", thumbnail: #imageLiteral(resourceName: "antmanposter-139745")),
            Stock(title: "Avatar", thumbnail: #imageLiteral(resourceName: "avatarjq")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover"))
        ],
        Section.ANIME:  [
            Stock(title: "Avatar", thumbnail: #imageLiteral(resourceName: "avatarjq")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Ant Man", thumbnail: #imageLiteral(resourceName: "antmanposter-139745")),
            Stock(title: "Avatar", thumbnail: #imageLiteral(resourceName: "avatarjq")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover"))
        ],
        Section.CLASSIC:  [
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Avatar", thumbnail: #imageLiteral(resourceName: "avatarjq")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover"))
        ],
        Section.DOCUMENTARIES:  [
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover"))
        ],
        Section.DRAMAS:  [
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover"))
        ],
        Section.MUSIC:  [
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Ant Man", thumbnail: #imageLiteral(resourceName: "antmanposter-139745")),
            Stock(title: "Avatar", thumbnail: #imageLiteral(resourceName: "avatarjq")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Avatar", thumbnail: #imageLiteral(resourceName: "avatarjq")),
            Stock(title: "Hobbit", thumbnail: #imageLiteral(resourceName: "hobbit")),
            Stock(title: "How to Train Your Dragon", thumbnail: #imageLiteral(resourceName: "How_to_Train_Your_Dragon_DVD_Cover")),
            Stock(title: "Harry Poter", thumbnail: #imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets")),
            Stock(title: "Fright Night", thumbnail: #imageLiteral(resourceName: "fright-night-columbia-pictures-everett-122315"))
        ]*/
    ]
}

