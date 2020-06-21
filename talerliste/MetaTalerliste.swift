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
    
    // Oversett statuskode for møtet til string
    let mote_aktivitet_status: Int
    var mote_aktivitet_status_tekst: String {
        switch mote_aktivitet_status {
        case 0:
            return "Ikke startet"
        case 1:
            return "Aktiv"
        case 2:
            return "Pause"
        default:
            return "Ukjent statuskode"
        }
    }
    
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
