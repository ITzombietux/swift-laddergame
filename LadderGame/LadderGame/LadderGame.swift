import Foundation

struct LadderGame {
    
    private(set) var players: [LadderPlayer]
    private var height = 0
    
    init?(input: ([String], Int) ) {
        
        var playerNames = [LadderPlayer]()
        for name in input.0 {
            let playerName = LadderPlayer(name: name)
            playerNames.append(playerName)
        }
        self.players = playerNames
        self.height = input.1
        
        if self.players.count < 2 || self.players.count > 5 || self.height == 0 {
            print("사다리 게임 진행 불가.(사다리 높이 0 이상/ 플레이어 2~5 이상 가능)")
            return nil
        }
        
    }
    
    func makeLadderElements() -> [[Bool]] {
        var ladderElements = [[Bool]](repeating: Array(repeating: false ,count: self.players.count-1), count: self.height)
        
        for i in 0..<self.height {
            for j in 0..<players.count-1 {
                ladderElements[i][j] = arc4random_uniform(2) == 0 ? true : false
            }
        }
        return ladderElements
    }
}

