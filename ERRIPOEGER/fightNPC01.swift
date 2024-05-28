//
//  fightNPC01.swift
//  ERRIPOEGER
//
//  Created by PATRICIA MILET MATIAS on 23/05/24.
//


import Foundation

// Criando os NPCs
var aranha = Player(name: "ARANHA 🕷️", hp: 20)
var coelho1 = Player(name: "VOCÊ 🐇 ", hp: 20)

struct Player{
    var name: String
    var hp: Int
    
}
func rabbit(){
    print("""
               
                                             .7
                                 __        .'╱
                        ╱╲    .- ╱        ╱ ╱
                       ╱  ; .'  .'       ╱ ╱
                      :   :╱  .'        ╱ ╱
                       ╲  ;-.'         ╱ ╱
          .--¦¦¦¦--..__╱     `.       ╱ ╱
        .'           .'    `๏  ╲     ╱ ╱
       ╱                    `   ;   ╱ ╱
      :                  ╲      :  ╱ ╱
    .-;        -.         `.__.-'__|╱
    :  ;          ╲     ,   ;  ,-╲__╲
    '._:           ;   :   (   |f-"Y╲|
       ╲╱╱  .__    ;    ╲   `-.╲()7L╱
        ;     ¦-,╱_..--¦`-..__)cgD
        '¦¦--.._:
            
    """.yellow2())
}

func spider(){
    print("""
                $               $
              $$                 $$
             $$                   $$
            $$                     $$
             $$                   $$
         $$  $$                   $$  $$
        $$   $$                   $$   $$
       $$$       $$$  $$$$$  $$$       $$$
        $$$$$$    $$$$$$$$$$$$$   $$$$$$$
                $$$$$$$$$$$$$$$$
       $$$ $$$$$$$$$$$$$$$$$$$$$$$$$$ $$$
      $$$          $$$$$$$$$$          $$$
     $$         $$$$$$$$$$$$$$$$$        $$
     $$     $$$$$$$$$$$$$$$$$$$$$$$$     $$
    $$     $$$    $$$$$$$$$$$$    $$$     $$
     $$    $$     $$$$$  $$$$$     $$    $$
       $   $$       $$$$$$$$       $$   $
        $  $$                      $$  $
           $$                      $$
            $$                    $$
              $                   $
    """.blue2())
}

// Estrutura para representar um personagem
class Combate1 {
    var player1: Player
    var player2: Player
    
    init(_ player1: Player, _ player2: Player){
        self.player1 = player1
        self.player2 = player2
    }
    
    func start(){
        print()
        print("Iniciando o combate entre \(player1.name) e \(player2.name)!".red())
        print("-----------------------------------------")
    }
    
    
    // Método para imprimir o estado atual do personagem
    func printStatus() {
        print("""
        ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓         ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
        │  \(player2.name): HP \(player2.hp)                      │         │  \(player1.name): HP \(player1.hp)                   │
        ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛         ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

""")
    }
    
    func player1AtacaPlayer2(_ damage1: Int){
        // Imprimindo o estado atual dos personagens
        print("""
                        ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
                        │  \(player1.name) ataca \(player2.name) e causa \(damage1) de dano.                       │
                        ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
                        """)
    }
    
    func player2AtacaPlayer1(_ damage2: Int){
        // Imprimindo o estado atual dos personagens
        print("""
                        ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
                        │  \(player2.name) ataca \(player1.name) e causa \(damage2) de dano.                       │
                        ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
                        """)
    }
    
    func run(){
        // Loop de combate até que um dos personagens fique sem HP
        while player1.hp > 0 && player2.hp > 0 {
            // Simulando ataques
            var damage1 = Int.random(in: 1...4)
            var damage2 = Int.random(in: 1...4)
            
            if armor {damage1 = Int.random(in: 1...3)}
            if sword {damage2 = Int.random(in: 3...6)}
            if shield{damage1 = Int.random(in: 0...3)}
            
            // Aplicando danos
            player2.hp -= damage1
            player1.hp -= damage2
            
            if let posicaoItem = buscarIndice(item: "Cenoura"), player2.hp <= 10   {
                
                print("Você tem \(inventoryList[buscarIndice(item: "Cenoura")!].qty) cenouras. Deseja usar cenouras para recuperar seu HP?")
                print("""
            1 - Sim.
            2 - Não.
                         
            """)

                let recover = readLine()!
                if let recover2 = Int(recover) {
                    if recover2 == 1 {
                        player2.hp += 5
                        removerDoInventario(item: "Cenoura", qty: 1)
                    }
                }
                
            }
            
            player1AtacaPlayer2(damage1)
            rabbit()
            printStatus()
            
            _ = readLine()
            
            print()
            
            player2AtacaPlayer1(damage2)
            spider()
            printStatus()
            
            print("-----------------------------------------")
        }
        
        // Determinando o vencedor
        if player1.hp <= 0 {
            print("\(player2.name) venceu o combate!")
            doors()
        } else {
            print("\(player1.name) venceu o combate!")
            print("""
                                  ,-=-.
                                 ╱  +  ╲
                                 | ~~~ |
                                 |R.I.P|
                            ╲vV,,|_____|V,VV,,
                     """.red2())
            
            slowPrint(text: "Infelizmente você perdeu. Reabra o jogo para tentar novamente.")
            
            exit(0)
        }
    }
}





// Função para simular um combate entre dois personagens
func combat1(player1: inout Player , player2: inout Player) {
    
    let combate = Combate1(player1, player2)
    
    combate.start()
    combate.run()
    
    
}

func pathFigth(){
    slowPrint(text: "Você tem muita coragem! Essa porta levou você até uma grande teia de ARANHAS!")
    slowPrint(text: "AGORA TEM VÁRIAS ARANHAS INDO ATRÁS DE VOCÊ!")
    slowPrint(text: "Calma! Se você ganhar da Aranha Rainha, poderá continuar o caminho.")
}
