//
//  Model.swift
//  ttamircim
//
//  Created by Hüseyin HÖBEK on 18.07.2024.
//

import Foundation

struct TeknikServis: Codable, Identifiable {
    let id: Int
    let musteriID: Int
    let cihazTuru: String
    let Marka: String
    let Model: String
    let SeriNo: String
    let Ariza: String
    let HariciHasar: String
    let Aksesuarlari: String
    let Sifresi: String
    let RafNo: String
    let IslemUcreti: String
    let Giderler: String
    let Asama: String
    let Nakit: String
    let KKarti: String
    let Veresiye: String
    let YapilanIslemler: String
    let TeslimDurumu: String
    let Notu: String
    let Tarih: String
    let Personel: String

    enum CodingKeys: String, CodingKey {
        case id
        case musteriID
        case cihazTuru
        case Marka
        case Model
        case SeriNo
        case Ariza
        case HariciHasar
        case Aksesuarlari
        case Sifresi
        case RafNo
        case IslemUcreti
        case Giderler
        case Asama
        case Nakit
        case KKarti
        case Veresiye
        case YapilanIslemler = "Yapilanİslemler"
        case TeslimDurumu
        case Notu
        case Tarih
        case Personel
    }
}

struct Musteriler: Codable, Identifiable {
    let id: Int
    let MusteriAdi: String
    let MusteriTel: String
    let Bakiye: String

    enum CodingKeys: String, CodingKey {
        case id
        case MusteriAdi
        case MusteriTel
        case Bakiye
    }
}

struct GunlukKasa: Codable, Identifiable {
    let id: Int
    let IslemNo: Int
    let IslemTuru: String
    let Aciklama: String
    let Nakit: String
    let Kart: String
    let Veresiye: String
    let Toplam: String
    let Tarih: String

    enum CodingKeys: String, CodingKey {
        case id
        case IslemNo
        case IslemTuru
        case Aciklama
        case Nakit
        case Kart
        case Veresiye
        case Toplam
        case Tarih
    }
}
