//
//  YTPresenter.swift
//  YTViperTest
//
//  Created by ようへい on 2022/02/16.
//

import Foundation


// talks to -> interactor, router, view

enum NetworkError: Error {
  case networkFailed
  case parsingFailed
}

protocol YTCommonPresenter {
  var router: YTCommonRouter? { get set }
  var interactor: YTCommonInteractor? { get set }
  var view: YTAnyVC? { get set }

  func interactorDidDownloadCryptos(result: Result<[YTCrypto], Error>)
}

class YTPresenter: YTCommonPresenter {

  var router: YTCommonRouter?
  var interactor: YTCommonInteractor?
  var view: YTAnyVC?

  func interactorDidDownloadCryptos(result: Result<[YTCrypto], Error>) {
    switch result {
    case .success(let crypto):
      break
    case .failure(let error):
      break
    }
  }
}
