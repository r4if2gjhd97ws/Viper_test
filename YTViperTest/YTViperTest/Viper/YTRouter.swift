//
//  YTRouter.swift
//  YTViperTest
//
//  Created by γγγΈγ on 2022/02/16.
//

import Foundation

protocol YTCommonRouter {
  static func startExecution() -> YTCommonRouter
}

class YTCryptoRouter: YTCommonRouter {
  static func startExecution() -> YTCommonRouter {
    let router = YTCryptoRouter()
    
    
    return router
  }
  
  
}
