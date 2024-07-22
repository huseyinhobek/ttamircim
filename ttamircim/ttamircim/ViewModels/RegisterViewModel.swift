//
//  HomeViewModel.swift
//  ttamircim
//
//  Created by Hüseyin HÖBEK on 18.07.2024.
//

import Foundation
import Combine

class RegisterViewModel: ObservableObject {
    @Published var data: String = ""
    @Published var teknikServisData: [TeknikServis] = []
    @Published var musterilerData: [Musteriler] = []
    @Published var gunlukKasaData: [GunlukKasa] = []

    private var dataService: DataService

    init(dataService: DataService) {
        self.dataService = dataService
        loadData()
    }

    func loadData() {
        dataService.fetchData { result in
            switch result {
            case .success(let dataResponse):
                DispatchQueue.main.async {
                    self.teknikServisData = dataResponse.kullanici
                    self.musterilerData = dataResponse.musteriler
                    self.gunlukKasaData = dataResponse.gunlukKasa
                    self.data = "Data fetched successfully"
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.data = "Failed to fetch data: \(error.localizedDescription)"
                }
            }
        }
    }

    func addMusteriAndServis(_ musteri: Musteriler, _ servis: TeknikServis) {
        dataService.addMusteriAndServis(musteri, servis) { result in
            switch result {
            case .success(let (newMusteri, newServis)):
                DispatchQueue.main.async {
                    self.musterilerData.append(newMusteri)
                    self.teknikServisData.append(newServis)
                    self.data = "Kayıt başarıyla eklendi"
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    self.data = "Kayıt eklenemedi: \(error.localizedDescription)"
                }
            }
        }
    }
}
