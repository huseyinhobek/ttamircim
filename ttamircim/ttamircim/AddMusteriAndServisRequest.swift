//
//  AddMusteriAndServisRequest.swift
//  ttamircim
//
//  Created by Hüseyin HÖBEK on 20.07.2024.
//

import Foundation

struct AddMusteriAndServisRequest: Encodable {
    let musteri: Musteriler
    let servis: TeknikServis
}
