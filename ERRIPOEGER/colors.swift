//
//  colors.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 20/05/24.
//

import Foundation

// Cores
extension String {
    
    func bold() -> String { juntar("1")}
    func dim() -> String { juntar("2")}
    func italic() -> String { juntar("3")}
    func underline() -> String { juntar("4")}
    func black() -> String { juntar("30") }
    func red() -> String { juntar("31") }
    func green() -> String { juntar("32") }
    func yellow() -> String { juntar("33") }
    func blue() -> String { juntar("34") }
    func magenta() -> String { juntar("35") }
    func cyan() -> String { juntar("36") }
    func white() -> String { juntar("37") }
    func bgBlack() -> String { juntar("40") }
    func bgRed() -> String { juntar("41") }
    func bgGreen() -> String { juntar("42") }
    func bgYellow() -> String { juntar("43") }
    func bgBlue() -> String { juntar("44") }
    func bgMagenta() -> String { juntar("45") }
    func bgCyan() -> String { juntar("46") }
    func bgWhite() -> String { juntar("47") }
    func underLine() -> String { juntar("4") }
    func risco() -> String {juntar("9")}
    
    func black2() -> String { juntar("90") }
    func red2() -> String { juntar("91") }
    func green2() -> String { juntar("92") }
    func yellow2() -> String { juntar("93") }
    func blue2() -> String { juntar("94") }
    func magenta2() -> String { juntar("95") }
    func cyan2() -> String { juntar("96") }
    func white2() -> String { juntar("97") }
    func bgBlack2() -> String { juntar("100") }
    func bgRed2() -> String { juntar("101") }
    func bgGreen2() -> String { juntar("102") }
    func bgYellow2() -> String { juntar("103") }
    func bgBlue2() -> String { juntar("104") }
    func bgMagenta2() -> String { juntar("105") }
    func bgCyan2() -> String { juntar("106") }
    func bgWhite2() -> String { juntar("107") }
    
    func juntar(_ cor: String) -> String {
        "\u{001B}[0;" + cor + "m" + self + "\u{001B}[0;0m"
    }
    
    var tamanho: Int { self.count - 13 }
    
}
