//
//  Cards.swift
//  prueba0
//
//  Created by user237160 on 10/24/23.
//

import SwiftUI

struct Cards: Identifiable, Hashable{
    var id: UUID = .init()
    var title: String
    var image: String
}
var cards: [Cards] = [
    .init(title: "img5", image: "img5"),
    .init(title: "img2", image: "img2"),
    .init(title: "img3", image: "img3"),
    .init(title: "img4", image: "img4"),
    .init(title: "img1", image: "img1"),
    .init(title: "img6", image: "img6"),
    .init(title: "img7", image: "img7"),
    .init(title: "img8", image: "img8"),]

struct Nota {
    var id : Int
    var name : String
    //var description : String
    var imagen: Image
}
struct Notasa {
    var id : Int
    var descripcion : String
    //var description : String
    var imagen: Image
}
