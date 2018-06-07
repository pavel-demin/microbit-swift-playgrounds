/*
 MIT License
 
 Copyright (c) 2018 micro:bit Educational Foundation
 Written by Gary J.H. Atkinson of Stinky Kitten Ltd.
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation

extension UnitAcceleration {
    public static let milliGravity      = UnitAcceleration(symbol: "mg", converter: UnitConverterLinear(coefficient: 9.81 / 1000.0))
    public static let microbitGravity   = UnitAcceleration(symbol: "mg", converter: UnitConverterLinear(coefficient: 9.81 / 1023.0))
}

public class MagneticFluxDensityUnit: Dimension {
    public static let tesla         = MagneticFluxDensityUnit(symbol: "T", converter: UnitConverterLinear(coefficient: 1.0))
    public static let milliTesla    = MagneticFluxDensityUnit(symbol: "mT", converter: UnitConverterLinear(coefficient: 1.0e3))
    public static let microTesla    = MagneticFluxDensityUnit(symbol: "µT", converter: UnitConverterLinear(coefficient: 1.0e6))
    public static let nanoTesla     = MagneticFluxDensityUnit(symbol: "nT", converter: UnitConverterLinear(coefficient: 1.0e9))
    
    public static let baseUnit = tesla
}
