//
//  MetaTalerliste.swift
//  talerliste
//
//  Created by Kristian Myhre on 20/06/2020.
//  Copyright © 2020 Kristian Myhre. All rights reserved.
//

import Foundation


struct MetaTalerliste: Decodable {
    let mote_id: Int
    let mote_aktivitet_status: Int
    let mote_start_dato_tid: String
    
    struct Taleinformasjon_liste: Decodable {
        let sak_tittel: String
        let sak_henvisning: String
    }
    
    let taleinformasjon_liste: [Taleinformasjon_liste]
    
    struct Taler_liste: Decodable {
        
        struct Taler: Decodable {
            let rekkefolge_status: String?
            let taler_parti_id: String?
            let taler_person_id: String?
            let taler_rolle: String?
            let tildelt_sekunder: Int?
        }
        let taler: [Taler]?
    }
    let taler_liste: [Taler_liste]
}
