//
//  fetchData.swift
//  talerliste
//
//  Created by Kristian Myhre on 02/06/2020.
//  Copyright © 2020 Kristian Myhre. All rights reserved.
//

import Foundation

func fetchJSON() {


    // Create URL
    if let url = URL(string: "https://data.stortinget.no/eksport/talerliste?format=JSON&key=9b607b2513108b9c8d1249a149bab528fe3abdc985b4d28816966d258a4f") {
        
        // Create URLSession
        let session = URLSession(configuration: .default)
        
        // Give the session a task
        let task = session.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!)
                return
            }
            
            if let safeData = data {
                //code goes here
                
                let decoder = JSONDecoder()
                do {
                    let decodedData = try decoder.decode(MetaTalerliste.self, from: safeData)
                    let moteID = decodedData.mote_id
                    let moteAktivitetStatusTekst = decodedData.mote_aktivitet_status_tekst
                    print("Møte-ID er \(moteID). Status for møtet er «\(moteAktivitetStatusTekst)».")
                    
                    
                    // print(decodedData.mote_id)
                } catch {
                    print(error)
                }

                
                
                
                // line below for testing
                // parseJSON(talerlistedata: safeData)
            }
        }
        
        // Start the task
        task.resume()
    }
}



/*
 
// Old code now. Reuse if you need to parse the JSON outside of fetching it
 
func parseJSON() {
    let decoder = JSONDecoder()
    do {
        let decodedData = try decoder.decode(MetaTalerliste.self, from: safeData)
        let moteID = decodedData.mote_id
        let moteAktivitetStatus = decodedData.mote_aktivitet_status
        
        
        print(decodedData.mote_id)
    } catch {
        print(error)
    }
}
*/
