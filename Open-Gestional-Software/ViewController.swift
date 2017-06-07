//
//  ViewController.swift
//  Open-Gestional-Software
//
//  Created by Luca Scutigliani on 06/06/17.
//  Copyright © 2017 Scutigliani Luca. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    //WebView (Api Call) [Hidden]
    @IBOutlet weak var myView: WebView!
    
    //Info Labels Room 1
    @IBOutlet weak var nome1: NSTextField!
    @IBOutlet weak var postazioni1: NSTextField!
    @IBOutlet weak var disponibile1: NSTextField!
    @IBOutlet weak var prenotato1: NSTextField!
    @IBOutlet weak var prezzo1: NSTextField!
    
    //Info Labels Room 2
    @IBOutlet weak var nome2: NSTextField!
    @IBOutlet weak var postazioni2: NSTextField!
    @IBOutlet weak var disponibile2: NSTextField!
    @IBOutlet weak var prenotato2: NSTextField!
    @IBOutlet weak var prezzo2: NSTextField!
    
    //Info Labels Room 3
    @IBOutlet weak var nome3: NSTextField!
    @IBOutlet weak var postazioni3: NSTextField!
    @IBOutlet weak var disponibile3: NSTextField!
    @IBOutlet weak var prenotato3: NSTextField!
    @IBOutlet weak var prezzo3: NSTextField!
    
    //Info Labels Room 4
    @IBOutlet weak var nome4: NSTextField!
    @IBOutlet weak var postazioni4: NSTextField!
    @IBOutlet weak var disponibile4: NSTextField!
    @IBOutlet weak var prenotato4: NSTextField!
    @IBOutlet weak var prezzo4: NSTextField!
    
    //Info Labels Room 5
    @IBOutlet weak var nome5: NSTextField!
    @IBOutlet weak var postazioni5: NSTextField!
    @IBOutlet weak var disponibile5: NSTextField!
    @IBOutlet weak var prenotato5: NSTextField!
    @IBOutlet weak var prezzo5: NSTextField!
    
    //Info Labels Room 6
    @IBOutlet weak var nome6: NSTextField!
    @IBOutlet weak var postazioni6: NSTextField!
    @IBOutlet weak var disponibile6: NSTextField!
    @IBOutlet weak var prenotato6: NSTextField!
    @IBOutlet weak var prezzo6: NSTextField!
    
    //Info Labels Room 7
    @IBOutlet weak var nome7: NSTextField!
    @IBOutlet weak var postazioni7: NSTextField!
    @IBOutlet weak var disponibile7: NSTextField!
    @IBOutlet weak var prenotato7: NSTextField!
    @IBOutlet weak var prezzo7: NSTextField!
    
    //Info Labels Room 8
    @IBOutlet weak var nome8: NSTextField!
    @IBOutlet weak var postazione8: NSTextField!
    @IBOutlet weak var disponibile8: NSTextField!
    @IBOutlet weak var prenotato8: NSTextField!
    @IBOutlet weak var prezzo8: NSTextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = fetch()
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    //Dependency Functions
    
    func json_parseData(_ data: Data) -> NSDictionary? {
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
            print("[JSON] OK!")
            print(json)
            return (json as? NSDictionary)
        } catch _ {
            print("[ERROR] An error has happened with parsing of json data")
            return nil
        }
    }
    
    func data_request(forData: String) -> Data? {
        guard let url = URL(string: "http://127.0.0.1/kds/api/fetch.json") else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            print("[ERROR] There is an unspecified error with the connection")
            return nil
        }
        
        print("[CONNECTION] OK, data correctly downloaded")
        return data
    }
    
    //New Functions
    
    func fetch() {
        
        myView.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch.php")!))
        
        let data = data_request(forData: "stored")
        _ = json_parseData(data!)
        
        if let json = json_parseData(data!) {
            let data_array: NSArray = (json["stored"] as? NSArray)!
            let uff1: NSDictionary = data_array[0] as! NSDictionary
            let uff2: NSDictionary = data_array[1] as! NSDictionary
            let uff3: NSDictionary = data_array[2] as! NSDictionary
            let uff4: NSDictionary = data_array[3] as! NSDictionary
            let uff5: NSDictionary = data_array[4] as! NSDictionary
            let uff6: NSDictionary = data_array[5] as! NSDictionary
            let uff7: NSDictionary = data_array[6] as! NSDictionary
            let uff8: NSDictionary = data_array[7] as! NSDictionary
            
            //Inizio Pannello 1
            let postazioni1testo : String = "Postazioni: \(((uff1["postazioni"] as? String!)!)!)"
            if (((uff1["disponibile"] as? String!)!)! == "1"){
                
                var disponibile1testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile1.stringValue = disponibile1testo
                
            } else {
                
                var disponibile1testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile1.stringValue = disponibile1testo
                
            }
            
            if (((uff1["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff1["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato1testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato1.stringValue = prenotato1testo
                
            } else {
                
                var prenotato1testo = "Dal: \(((uff1["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff1["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato1.stringValue = prenotato1testo
                
            }
            
            let prezzo1testo = "\(((uff1["prezzo"] as? String!)!)!)€"
            
            nome1.stringValue = (uff1["nome"] as? String!)!
            postazioni1.stringValue = postazioni1testo
            prezzo1.stringValue = prezzo1testo
            //Fine Pannello 1
            
            //Inizio Pannello 2
            let postazioni2testo : String = "Postazioni: \(((uff2["postazioni"] as? String!)!)!)"
            if (((uff2["disponibile"] as? String!)!)! == "1"){
                
                var disponibile2testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile2.stringValue = disponibile2testo
                
            } else {
                
                var disponibile2testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile2.stringValue = disponibile2testo
                
            }
            
            if (((uff2["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff2["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato2testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato2.stringValue = prenotato2testo
                
            } else {
                
                var prenotato2testo = "Dal: \(((uff2["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff2["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato2.stringValue = prenotato2testo
                
            }
            
            let prezzo2testo = "\(((uff2["prezzo"] as? String!)!)!)€"
            
            nome2.stringValue = (uff2["nome"] as? String!)!
            postazioni2.stringValue = postazioni2testo
            prezzo2.stringValue = prezzo2testo
            //Fine Pannello 2
            
            //Inizio Pannello 3
            let postazioni3testo : String = "Postazioni: \(((uff3["postazioni"] as? String!)!)!)"
            if (((uff3["disponibile"] as? String!)!)! == "1"){
                
                var disponibile3testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile3.stringValue = disponibile3testo
                
            } else {
                
                var disponibile3testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile3.stringValue = disponibile3testo
                
            }
            
            if (((uff3["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff3["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato3testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato3.stringValue = prenotato3testo
                
            } else {
                
                var prenotato3testo = "Dal: \(((uff3["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff3["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato3.stringValue = prenotato3testo
                
            }
            
            let prezzo3testo = "\(((uff3["prezzo"] as? String!)!)!)€"
            
            nome3.stringValue = (uff3["nome"] as? String!)!
            postazioni3.stringValue = postazioni3testo
            prezzo3.stringValue = prezzo3testo
            //Fine Pannello 3
            
            //Inizio Pannello 4
            let postazioni4testo : String = "Postazioni: \(((uff4["postazioni"] as? String!)!)!)"
            if (((uff4["disponibile"] as? String!)!)! == "1"){
                
                var disponibile4testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile4.stringValue = disponibile4testo
                
            } else {
                
                var disponibile4testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile4.stringValue = disponibile4testo
                
            }
            
            if (((uff4["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff4["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato4testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato4.stringValue = prenotato4testo
                
            } else {
                
                var prenotato4testo = "Dal: \(((uff4["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff4["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato4.stringValue = prenotato4testo
                
            }
            
            let prezzo4testo = "\(((uff4["prezzo"] as? String!)!)!)€"
            
            nome4.stringValue = (uff4["nome"] as? String!)!
            postazioni4.stringValue = postazioni4testo
            prezzo4.stringValue = prezzo4testo
            //Fine Pannello 4
            
            //Inizio Pannello 5
            let postazioni5testo : String = "Postazioni: \(((uff5["postazioni"] as? String!)!)!)"
            if (((uff5["disponibile"] as? String!)!)! == "1"){
                
                var disponibile5testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile5.stringValue = disponibile5testo
                
            } else {
                
                var disponibile5testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile5.stringValue = disponibile5testo
                
            }
            
            if (((uff5["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff5["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato5testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato5.stringValue = prenotato5testo
                
            } else {
                
                var prenotato5testo = "Dal: \(((uff5["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff5["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato5.stringValue = prenotato5testo
                
            }
            
            let prezzo5testo = "\(((uff5["prezzo"] as? String!)!)!)€"
            
            nome5.stringValue = (uff5["nome"] as? String!)!
            postazioni5.stringValue = postazioni5testo
            prezzo5.stringValue = prezzo5testo
            //Fine Pannello 5
            
            //Inizio Pannello 6
            let postazioni6testo : String = "Postazioni: \(((uff6["postazioni"] as? String!)!)!)"
            if (((uff6["disponibile"] as? String!)!)! == "1"){
                
                var disponibile6testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile6.stringValue = disponibile6testo
                
            } else {
                
                var disponibile6testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile6.stringValue = disponibile6testo
                
            }
            
            if (((uff6["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff6["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato6testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato6.stringValue = prenotato6testo
                
            } else {
                
                var prenotato6testo = "Dal: \(((uff6["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff6["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato6.stringValue = prenotato6testo
                
            }
            
            let prezzo6testo = "\(((uff6["prezzo"] as? String!)!)!)€"
            
            nome6.stringValue = (uff6["nome"] as? String!)!
            postazioni6.stringValue = postazioni6testo
            prezzo6.stringValue = prezzo6testo
            //Fine Pannello 6
            
            //Inizio Pannello 7
            let postazioni7testo : String = "Postazioni: \(((uff7["postazioni"] as? String!)!)!)"
            if (((uff7["disponibile"] as? String!)!)! == "1"){
                
                var disponibile7testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile7.stringValue = disponibile7testo
                
            } else {
                
                var disponibile7testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile7.stringValue = disponibile7testo
                
            }
            
            if (((uff7["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff7["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato7testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato7.stringValue = prenotato7testo
                
            } else {
                
                var prenotato7testo = "Dal: \(((uff7["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff7["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato7.stringValue = prenotato7testo
                
            }
            
            let prezzo7testo = "\(((uff7["prezzo"] as? String!)!)!)€"
            
            nome7.stringValue = (uff7["nome"] as? String!)!
            postazioni7.stringValue = postazioni7testo
            prezzo7.stringValue = prezzo7testo
            //Fine Pannello 7
            
            //Inizio Pannello 8
            let postazioni8testo : String = "Postazioni: \(((uff8["postazioni"] as? String!)!)!)"
            if (((uff8["disponibile"] as? String!)!)! == "1"){
                
                var disponibile8testo : String = "Disponibile"
                
                print("[DEBUGGING] Disponibile")
                
                disponibile8.stringValue = disponibile8testo
                
            } else {
                
                var disponibile8testo : String = "Non disponibile"
                
                print("[DEBUGGING] Non disponibile")
                
                disponibile8.stringValue = disponibile8testo
                
            }
            
            if (((uff8["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff8["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                var prenotato8testo = " - "
                
                print("[DEBUGGING] - ")
                
                prenotato8.stringValue = prenotato8testo
                
            } else {
                
                var prenotato8testo = "Dal: \(((uff8["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff8["data_fine_prenotazione"] as? String!)!)!)"
                
                print("[DEBUGGING] Date ok")
                
                prenotato8.stringValue = prenotato8testo
                
            }
            
            let prezzo8testo = "\(((uff8["prezzo"] as? String!)!)!)€"
            
            nome8.stringValue = (uff8["nome"] as? String!)!
            postazione8.stringValue = postazioni8testo
            prezzo8.stringValue = prezzo8testo
            //Fine Pannello8
            
        }
        
    }

}

