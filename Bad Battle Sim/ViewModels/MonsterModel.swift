//
//  MonsterModel.swift
//  Bad Battle Sim
//
//  Created by Levi Vicars on 9/22/21.
//

import Foundation

class MonsterModel: ObservableObject {
    
    @Published var monsters = [Monsters]()
    
    func GetRemoteData() -> [Monsters] {
        
        let urlString = "https://levivicars.github.io/Bad-Battle-Sim-RemoteData/Monsters.JSON"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return [Monsters]()
        }
        
        let urlRequest = URLRequest(url: url!)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: urlRequest) { data, response, error in
            
            guard error != nil else {
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                
                let monsters = try decoder.decode([Monsters].self, from: data!)
                
                self.monsters = monsters
                
            }
            catch {
                print(error)
            }
            
            
        }
        dataTask.resume()
        
        return [Monsters]()
    }
    
    init() {
        GetRemoteData()
    }
    
}

