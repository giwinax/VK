//
//  NewsfeedModels.swift
//  VK
//
//  Created by s b on 07.04.2022.
//

import UIKit

enum Newsfeed {
   
  enum Model {
    struct Request {
      enum RequestType {
        case getNewsfeed
      }
    }
    struct Response {
      enum ResponseType {
        case presentNewsfeed(feed: FeedResponse)
      }
    }
    struct ViewModel {
      enum ViewModelData {
        case displayNewsfeed(feedViewModel: FeedViewModel)
      }
    }
  }
}

struct FeedViewModel {
    struct Cell: FeedCellViewModel {
        var iconUrlString: String
        var name: String
        var date: String
        var text: String?
        var likes: String?
        var comments: String?
        var shares: String?
        var views: String?
        var photoAttachement: FeedCellPhotoAttachementViewModel?
        var sizes: FeedCellSizes
    }
    
     struct FeedCellPhotoAttachment: FeedCellPhotoAttachementViewModel {
        var photoUrlString: String?
        var width: Int
        var height: Int
    }
    let cells: [Cell]
}
