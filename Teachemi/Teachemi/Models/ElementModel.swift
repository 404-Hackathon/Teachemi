//
//  ElementModel.swift
//  Teachemi
//
//  Created by Haider Alboloushi on 30/04/2021.
//

import Foundation

struct Element: Hashable {
    let name: String
    let symbol: String
    let mass: Double
    let atomicNum: Int
}

let elements: [Element] = [
    .init(name: "Hydrogen", symbol: "H", mass: 1.008, atomicNum: 1),
    .init(name: "Helium", symbol: "He", mass: 4.003, atomicNum: 2),
    .init(name: "Lithium", symbol: "Li", mass: 6.94, atomicNum: 3),
    .init(name: "Beryllium", symbol: "Be", mass: 9.012, atomicNum: 4),
    .init(name: "Boron", symbol: "B", mass: 10.81, atomicNum: 5),
    .init(name: "Carbon", symbol: "C", mass: 12.011, atomicNum: 6),
    .init(name: "Nitrogen", symbol: "N", mass: 14.007, atomicNum: 7),
    .init(name: "Oxygen", symbol: "O", mass: 15.999, atomicNum: 8),
    .init(name: "Fluorine", symbol: "F", mass: 18.998, atomicNum: 9),
    .init(name: "Neon", symbol: "Ne", mass: 20.18, atomicNum: 10),
    .init(name: "Sodium", symbol: "Na", mass: 22.99, atomicNum: 11),
    .init(name: "Magnesium", symbol: "Mg", mass: 24.305, atomicNum: 12),
    .init(name: "Aluminium", symbol: "Al", mass: 26.982, atomicNum: 13),
    .init(name: "Silicon", symbol: "Si", mass: 28.085, atomicNum: 14),
    .init(name: "Phosphorus", symbol: "P", mass: 30.974, atomicNum: 15),
    .init(name: "Sulfur", symbol: "S", mass: 32.06, atomicNum: 16),
    .init(name: "Chlorine", symbol: "Cl", mass: 35.45, atomicNum: 17),
    .init(name: "Argon", symbol: "Ar", mass: 39.948, atomicNum: 18),
    .init(name: "Potassium", symbol: "K", mass: 39.098, atomicNum: 19),
    .init(name: "Calcium", symbol: "Ca", mass: 40.078, atomicNum: 20)
]
