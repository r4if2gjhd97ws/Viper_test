//
//  YTinteractor.swift
//  YTViperTest
//
//  Created by ようへい on 2022/02/16.
//

import Foundation

// talk to -> presenter

protocol YTCommonInteractor {
  var presenter: YTCommonPresenter? { get set }
  func downloadCryptos()

}

class YTCryptoInteractor: YTCommonInteractor {

  var presenter: YTCommonPresenter?

  func downloadCryptos() {
    guard let url = URL(string: "") else { return }

    let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
      guard let data = data else {
        self?.presenter?.interactorDidDownloadCryptos(result: .failure(NetworkError.networkFailed))
        return
      }

      do {
        let cryptos = try JSONDecoder().decode([YTCrypto].self, from: data)
        self?.presenter?.interactorDidDownloadCryptos(result: .success(cryptos))
      } catch {
        self?.presenter?.interactorDidDownloadCryptos(result: .failure(NetworkError.parsingFailed))
      }
    }
    task.resume()
  }
}

