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
    
    //Box 1 (Home Page) [Main]
    @IBOutlet weak var box1: NSBox!
    
    //Box 2 (Add Page) [Hidden] {Enabled}
    @IBOutlet weak var box2: NSBox!
    
    //Box 3 (Remove Page) [Hidden] {Enabled}
    @IBOutlet weak var box3: NSBox!
    
    //Box 4 (Price Page) [Hidden] {Enabled}
    @IBOutlet weak var box4: NSBox!
    
    //Box 5
    @IBOutlet weak var box5: NSBox!
    
    //WebView (Api Call) [Hidden]
    @IBOutlet weak var myView: WebView!
    @IBOutlet weak var myView2: WebView!
    @IBOutlet weak var myView3: WebView!
    @IBOutlet weak var myView4: WebView!
    @IBOutlet weak var myView5: WebView!
    @IBOutlet weak var myView6: WebView!
    @IBOutlet weak var myView7: WebView!
    @IBOutlet weak var myView8: WebView!
    @IBOutlet weak var myView9: WebView!
    @IBOutlet weak var myView10: WebView!
    @IBOutlet weak var myView11: WebView!
    @IBOutlet weak var myView12: WebView!
    @IBOutlet weak var myView13: WebView!
    @IBOutlet weak var myView14: WebView!
    
    //Campi Prenotazione Futura
    @IBOutlet weak var nomeStanzatextFut: NSComboBox!
    @IBOutlet weak var nomeClienteFut: NSTextField!
    @IBOutlet weak var cognomeClienteFut: NSTextField!
    @IBOutlet weak var cellulareClienteFut: NSTextField!
    @IBOutlet weak var emailClienteFut: NSTextField!
    @IBOutlet weak var data_InizioFut: NSTextField!
    @IBOutlet weak var data_FineFut: NSTextField!
    
    //Campi Prenotazione
    @IBOutlet weak var nomeStanzaText: NSComboBox!
    @IBOutlet weak var data_InizioText: NSTextField!
    @IBOutlet weak var data_FineText: NSTextField!
    @IBOutlet weak var nomeCognomeClienteText: NSTextField!
    
    //Campi Cliente
    @IBOutlet weak var nomeClienteText: NSTextField!
    @IBOutlet weak var cognomeClienteText: NSTextField!
    @IBOutlet weak var cellulareText: NSTextField!
    @IBOutlet weak var data_nascitaText: NSTextField!
    
    //Campo Rimozione Prenotazione
    @IBOutlet weak var nomeStanzaRemoveText: NSComboBox!
    
    //Campi Prezzo
    @IBOutlet weak var HalfDay1: NSTextField!
    @IBOutlet weak var Day1: NSTextField!
    @IBOutlet weak var Month1: NSTextField!
    @IBOutlet weak var HalfDay2: NSTextField!
    @IBOutlet weak var Day2: NSTextField!
    @IBOutlet weak var Month2: NSTextField!
    @IBOutlet weak var Halfday3: NSTextField!
    @IBOutlet weak var Day3: NSTextField!
    @IBOutlet weak var Month3: NSTextField!
    @IBOutlet weak var Halfday4: NSTextField!
    @IBOutlet weak var Day4: NSTextField!
    @IBOutlet weak var Month4: NSTextField!
    @IBOutlet weak var Halfday5: NSTextField!
    @IBOutlet weak var Day5: NSTextField!
    @IBOutlet weak var Month5: NSTextField!
    @IBOutlet weak var Halfday6: NSTextField!
    @IBOutlet weak var Day6: NSTextField!
    @IBOutlet weak var Month6: NSTextField!
    @IBOutlet weak var Halfday7: NSTextField!
    @IBOutlet weak var Day7: NSTextField!
    @IBOutlet weak var Month7: NSTextField!
    @IBOutlet weak var Halfday8: NSTextField!
    @IBOutlet weak var Day8: NSTextField!
    @IBOutlet weak var Month8: NSTextField!
    
    //Info Labels Room 1
    @IBOutlet weak var nome1: NSTextField!
    @IBOutlet weak var postazioni1: NSTextField!
    @IBOutlet weak var disponibile1: NSTextField!
    @IBOutlet weak var prenotato1: NSTextField!
    @IBOutlet weak var prezzoHalfDay1: NSTextField!
    @IBOutlet weak var prezzoDay1: NSTextField!
    @IBOutlet weak var prezzoMonth1: NSTextField!
    
    //Info Labels Room 2
    @IBOutlet weak var nome2: NSTextField!
    @IBOutlet weak var postazioni2: NSTextField!
    @IBOutlet weak var disponibile2: NSTextField!
    @IBOutlet weak var prenotato2: NSTextField!
    @IBOutlet weak var prezzoHalfDay2: NSTextField!
    @IBOutlet weak var prezzoDay2: NSTextField!
    @IBOutlet weak var prezzoMonth2: NSTextField!
    
    //Info Labels Room 3
    @IBOutlet weak var nome3: NSTextField!
    @IBOutlet weak var postazioni3: NSTextField!
    @IBOutlet weak var disponibile3: NSTextField!
    @IBOutlet weak var prenotato3: NSTextField!
    @IBOutlet weak var prezzoHalfDay3: NSTextField!
    @IBOutlet weak var prezzoDay3: NSTextField!
    @IBOutlet weak var prezzoMonth3: NSTextField!
    
    //Info Labels Room 4
    @IBOutlet weak var nome4: NSTextField!
    @IBOutlet weak var postazioni4: NSTextField!
    @IBOutlet weak var disponibile4: NSTextField!
    @IBOutlet weak var prenotato4: NSTextField!
    @IBOutlet weak var prezzoHalfDay4: NSTextField!
    @IBOutlet weak var prezzoDay4: NSTextField!
    @IBOutlet weak var prezzoMonth4: NSTextField!
    
    //Info Labels Room 5
    @IBOutlet weak var nome5: NSTextField!
    @IBOutlet weak var postazioni5: NSTextField!
    @IBOutlet weak var disponibile5: NSTextField!
    @IBOutlet weak var prenotato5: NSTextField!
    @IBOutlet weak var prezzoHalfDay5: NSTextField!
    @IBOutlet weak var prezzoDay5: NSTextField!
    @IBOutlet weak var prezzoMonth5: NSTextField!
    
    //Info Labels Room 6
    @IBOutlet weak var nome6: NSTextField!
    @IBOutlet weak var postazioni6: NSTextField!
    @IBOutlet weak var disponibile6: NSTextField!
    @IBOutlet weak var prenotato6: NSTextField!
    @IBOutlet weak var prezzoHalfDay6: NSTextField!
    @IBOutlet weak var prezzoDay6: NSTextField!
    @IBOutlet weak var prezzoMonth6: NSTextField!
    
    //Info Labels Room 7
    @IBOutlet weak var nome7: NSTextField!
    @IBOutlet weak var postazioni7: NSTextField!
    @IBOutlet weak var disponibile7: NSTextField!
    @IBOutlet weak var prenotato7: NSTextField!
    @IBOutlet weak var prezzoHalfDay7: NSTextField!
    @IBOutlet weak var prezzoDay7: NSTextField!
    @IBOutlet weak var prezzoMonth7: NSTextField!
    
    //Info Labels Room 8
    @IBOutlet weak var nome8: NSTextField!
    @IBOutlet weak var postazione8: NSTextField!
    @IBOutlet weak var disponibile8: NSTextField!
    @IBOutlet weak var prenotato8: NSTextField!
    @IBOutlet weak var prezzoHalfDay8: NSTextField!
    @IBOutlet weak var prezzoDay8: NSTextField!
    @IBOutlet weak var prezzoMonth8: NSTextField!
    
    //Info Fut Labels Room 1
    @IBOutlet weak var prenID1: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo1: NSTextField!
    @IBOutlet weak var dataInzioFineFut1: NSTextField!
    @IBOutlet weak var contattiFut1: NSTextField!
    @IBOutlet weak var avanti1: NSButton!
    @IBOutlet weak var accetta1: NSButton!
    @IBOutlet weak var elimina1: NSButton!
    @IBOutlet weak var indietro1: NSButton!

    //Info Fut Labels Room 2
    @IBOutlet weak var prenID2: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo2: NSTextField!
    @IBOutlet weak var dataInizioFineFut2: NSTextField!
    @IBOutlet weak var contattiFut2: NSTextField!
    @IBOutlet weak var avanti2: NSButton!
    @IBOutlet weak var indietro2: NSButton!
    @IBOutlet weak var accetta2: NSButton!
    @IBOutlet weak var elimina2: NSButton!
    
    //Info Fut Labels Room 3
    @IBOutlet weak var prenID3: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo3: NSTextField!
    @IBOutlet weak var dataInizioFineFut3: NSTextField!
    @IBOutlet weak var contattiFut3: NSTextField!
    @IBOutlet weak var accetta3: NSButton!
    @IBOutlet weak var elimina3: NSButton!
    @IBOutlet weak var indietro3: NSButton!
    @IBOutlet weak var avanti3: NSButton!
    
    //Info Fut Labels Room 4
    @IBOutlet weak var prenID4: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo4: NSTextField!
    @IBOutlet weak var dataInizioFineFut4: NSTextField!
    @IBOutlet weak var contattiFut4: NSTextField!
    @IBOutlet weak var accetta4: NSButton!
    @IBOutlet weak var elimina4: NSButton!
    @IBOutlet weak var indietro4: NSButton!
    @IBOutlet weak var avanti4: NSButton!
    @IBOutlet weak var accetta5: NSButton!
    
    //Info Fut Labels Room 5
    @IBOutlet weak var prenID5: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo5: NSTextField!
    @IBOutlet weak var dataInizioFineFut5: NSTextField!
    @IBOutlet weak var contattiFut5: NSTextField!
    @IBOutlet weak var indietro5: NSButton!
    @IBOutlet weak var elimina5: NSButton!
    @IBOutlet weak var avanti5: NSButton!
    
    //Info Lables Fut Room 6
    @IBOutlet weak var prenID6: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo6: NSTextField!
    @IBOutlet weak var dataInizioFineFut6: NSTextField!
    @IBOutlet weak var contattiFut6: NSTextField!
    @IBOutlet weak var indietro6: NSButton!
    @IBOutlet weak var avanti6: NSButton!
    @IBOutlet weak var accetta6: NSButton!
    @IBOutlet weak var elimina6: NSButton!
    
    //Info Fut Lables Room 7
    @IBOutlet weak var prenID7: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo7: NSTextField!
    @IBOutlet weak var indietro7: NSButton!
    @IBOutlet weak var dataInizioFineFut7: NSTextField!
    @IBOutlet weak var contattiFut7: NSTextField!
    @IBOutlet weak var avanti7: NSButton!
    @IBOutlet weak var accetta7: NSButton!
    @IBOutlet weak var elimina7: NSButton!
    
    //Info Fut Labels Room 8
    @IBOutlet weak var prenID8: NSTextField!
    @IBOutlet weak var nomeCognomeFutInfo8: NSTextField!
    @IBOutlet weak var indietro8: NSButton!
    @IBOutlet weak var dataInizioFineFut8: NSTextField!
    @IBOutlet weak var contattiFut8: NSTextField!
    @IBOutlet weak var avanti8: NSButton!
    @IBOutlet weak var accetta8: NSButton!
    @IBOutlet weak var elimina8: NSButton!
    
    //Variabili Globali
    var esecuzioneFetch : Int = 0
    var currentIndex1 : Int = 0
    var currentIndex2 : Int = 0
    var currentIndex3 : Int = 0
    var currentIndex4 : Int = 0
    var currentIndex5 : Int = 0
    var currentIndex6 : Int = 0
    var currentIndex7 : Int = 0
    var currentIndex8 : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.box2.isHidden = true
//        self.box3.isHidden = true
//        self.box4.isHidden = true
//        self.box5.isHidden = true
        
        _ = self.fetch()
        
        _ = self.checkFut1()
        
        _ = self.checkFut2()
        
        _ = self.checkFut3()
        
        _ = self.checkFut4()
        
        _ = self.checkFut5()
        
        _ = self.checkFut6()
        
        _ = self.checkFut7()
        
        _ = self.checkFut8()
        
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
        guard let url = URL(string: "http://127.0.0.1/kds/api/\(forData)") else {
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
        
        let data = data_request(forData: "fetch.json")
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
                
                let disponibile1testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile1.stringValue = disponibile1testo
                
            } else {
                
                let disponibile1testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile1.stringValue = disponibile1testo
                
            }
            
            if (((uff1["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff1["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato1testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato1.stringValue = prenotato1testo
                
            } else {
                
                let prenotato1testo = "Dal: \(((uff1["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff1["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato1.stringValue = prenotato1testo
                
            }
            
            let prezzoHalfDay1testo = "\(((uff1["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay1testo = "\(((uff1["prezzoGiorno"] as? String!)!)!)€ al giorno"
            let prezzoMonth1testo = "\(((uff1["prezzoMese"] as? String!)!)!)€ al Mese"
            
            nome1.stringValue = (uff1["nome"] as? String!)!
            postazioni1.stringValue = postazioni1testo
            prezzoHalfDay1.stringValue = prezzoHalfDay1testo
            prezzoDay1.stringValue = prezzoDay1testo
            prezzoMonth1.stringValue = prezzoMonth1testo
            
            //Fine Pannello 1
            
            //Inizio Pannello 2
            let postazioni2testo : String = "Postazioni: \(((uff2["postazioni"] as? String!)!)!)"
            if (((uff2["disponibile"] as? String!)!)! == "1"){
                
                let disponibile2testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile2.stringValue = disponibile2testo
                
            } else {
                
                let disponibile2testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile2.stringValue = disponibile2testo
                
            }
            
            if (((uff2["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff2["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato2testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato2.stringValue = prenotato2testo
                
            } else {
                
                let prenotato2testo = "Dal: \(((uff2["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff2["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato2.stringValue = prenotato2testo
                
            }
            
            let prezzoHalfDay2testo = "\(((uff2["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay2testo = "\(((uff2["prezzoGiorno"] as? String!)!)!)€ al giorno"
            let prezzoMonth2testo = "\(((uff2["prezzoMese"] as? String!)!)!)€ al Mese"
            
            nome2.stringValue = (uff2["nome"] as? String!)!
            postazioni2.stringValue = postazioni2testo
            prezzoHalfDay2.stringValue = prezzoHalfDay2testo
            prezzoDay2.stringValue = prezzoDay2testo
            prezzoMonth2.stringValue = prezzoMonth2testo
            
            //Fine Pannello 2
            
            //Inizio Pannello 3
            let postazioni3testo : String = "Postazioni: \(((uff3["postazioni"] as? String!)!)!)"
            if (((uff3["disponibile"] as? String!)!)! == "1"){
                
                let disponibile3testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile3.stringValue = disponibile3testo
                
            } else {
                
                let disponibile3testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile3.stringValue = disponibile3testo
                
            }
            
            if (((uff3["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff3["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato3testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato3.stringValue = prenotato3testo
                
            } else {
                
                let prenotato3testo = "Dal: \(((uff3["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff3["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato3.stringValue = prenotato3testo
                
            }
            
            let prezzoHalfDay3testo = "\(((uff3["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay3testo = "\(((uff3["prezzoGiorno"] as? String!)!)!)€ al giorno"
            let prezzoMonth3testo = "\(((uff3["prezzoMese"] as? String!)!)!)€ al Mese"
            
            nome3.stringValue = (uff3["nome"] as? String!)!
            postazioni3.stringValue = postazioni3testo
            prezzoHalfDay3.stringValue = prezzoHalfDay3testo
            prezzoDay3.stringValue = prezzoDay3testo
            prezzoMonth3.stringValue = prezzoMonth3testo
            //Fine Pannello 3
            
            //Inizio Pannello 4
            let postazioni4testo : String = "Postazioni: \(((uff4["postazioni"] as? String!)!)!)"
            if (((uff4["disponibile"] as? String!)!)! == "1"){
                
                let disponibile4testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile4.stringValue = disponibile4testo
                
            } else {
                
                let disponibile4testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile4.stringValue = disponibile4testo
                
            }
            
            if (((uff4["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff4["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato4testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato4.stringValue = prenotato4testo
                
            } else {
                
                let prenotato4testo = "Dal: \(((uff4["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff4["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato4.stringValue = prenotato4testo
                
            }
            
            let prezzoHalfDay4testo = "\(((uff4["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay4testo = "\(((uff4["prezzoGiorno"] as? String!)!)!)€ al giorno"
            let prezzoMonth4testo = "\(((uff4["prezzoMese"] as? String!)!)!)€ al Mese"
            
            nome4.stringValue = (uff4["nome"] as? String!)!
            postazioni4.stringValue = postazioni4testo
            prezzoHalfDay4.stringValue = prezzoHalfDay4testo
            prezzoDay4.stringValue = prezzoDay4testo
            prezzoMonth4.stringValue = prezzoMonth4testo
            //Fine Pannello 4
            
            //Inizio Pannello 5
            let postazioni5testo : String = "Postazioni: \(((uff5["postazioni"] as? String!)!)!)"
            if (((uff5["disponibile"] as? String!)!)! == "1"){
                
                let disponibile5testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile5.stringValue = disponibile5testo
                
            } else {
                
                let disponibile5testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile5.stringValue = disponibile5testo
                
            }
            
            if (((uff5["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff5["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato5testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato5.stringValue = prenotato5testo
                
            } else {
                
                let prenotato5testo = "Dal: \(((uff5["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff5["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato5.stringValue = prenotato5testo
                
            }
            
            let prezzoHalfDay5testo = "\(((uff5["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay5testo = "\(((uff5["prezzoGiorno"] as? String!)!)!)€ al giorno"
            let prezzoMonth5testo = "\(((uff5["prezzoMese"] as? String!)!)!)€ al Mese"
            
            nome5.stringValue = (uff5["nome"] as? String!)!
            postazioni5.stringValue = postazioni5testo
            prezzoHalfDay5.stringValue = prezzoHalfDay5testo
            prezzoDay5.stringValue = prezzoDay5testo
            prezzoMonth5.stringValue = prezzoMonth5testo
            //Fine Pannello 5
            
            //Inizio Pannello 6
            let postazioni6testo : String = "Postazioni: \(((uff6["postazioni"] as? String!)!)!)"
            if (((uff6["disponibile"] as? String!)!)! == "1"){
                
                let disponibile6testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile6.stringValue = disponibile6testo
                
            } else {
                
                let disponibile6testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile6.stringValue = disponibile6testo
                
            }
            
            if (((uff6["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff6["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato6testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato6.stringValue = prenotato6testo
                
            } else {
                
                let prenotato6testo = "Dal: \(((uff6["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff6["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato6.stringValue = prenotato6testo
                
            }
            
            let prezzoHalfDay6testo = "\(((uff6["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay6testo = "\(((uff6["prezzoGiorno"] as? String!)!)!)€ al giorno"
            let prezzoMonth6testo = "\(((uff6["prezzoMese"] as? String!)!)!)€ al Mese"
            
            nome6.stringValue = (uff6["nome"] as? String!)!
            postazioni6.stringValue = postazioni6testo
            prezzoHalfDay6.stringValue = prezzoHalfDay6testo
            prezzoDay6.stringValue = prezzoDay6testo
            prezzoMonth6.stringValue = prezzoMonth6testo
            //Fine Pannello 6
            
            //Inizio Pannello 7
            let postazioni7testo : String = "Postazioni: \(((uff7["postazioni"] as? String!)!)!)"
            if (((uff7["disponibile"] as? String!)!)! == "1"){
                
                let disponibile7testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile7.stringValue = disponibile7testo
                
            } else {
                
                let disponibile7testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile7.stringValue = disponibile7testo
                
            }
            
            if (((uff7["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff7["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato7testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato7.stringValue = prenotato7testo
                
            } else {
                
                let prenotato7testo = "Dal: \(((uff7["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff7["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato7.stringValue = prenotato7testo
                
            }
            
            let prezzoHalfDay7testo = "\(((uff7["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay7testo = "\(((uff7["prezzoGiorno"] as? String!)!)!)€ al giorno"
            
            nome7.stringValue = (uff7["nome"] as? String!)!
            postazioni7.stringValue = postazioni7testo
            prezzoHalfDay7.stringValue = prezzoHalfDay7testo
            prezzoDay7.stringValue = prezzoDay7testo
            //Fine Pannello 7
            
            //Inizio Pannello 8
            let postazioni8testo : String = "Postazioni: \(((uff8["postazioni"] as? String!)!)!)"
            if (((uff8["disponibile"] as? String!)!)! == "1"){
                
                let disponibile8testo : String = "Disponibile"
                
                // print("[DEBUGGING] Disponibile")
                
                disponibile8.stringValue = disponibile8testo
                
            } else {
                
                let disponibile8testo : String = "Non disponibile"
                
                // print("[DEBUGGING] Non disponibile")
                
                disponibile8.stringValue = disponibile8testo
                
            }
            
            if (((uff8["data_inizio_prenotazione"] as? String!)!)! == "00/00/0000" && ((uff8["data_fine_prenotazione"] as? String!)!)! == "00/00/0000") {
                
                let prenotato8testo = " - "
                
                // print("[DEBUGGING] - ")
                
                prenotato8.stringValue = prenotato8testo
                
            } else {
                
                let prenotato8testo = "Dal: \(((uff8["data_inizio_prenotazione"] as? String!)!)!) al: \(((uff8["data_fine_prenotazione"] as? String!)!)!)"
                
                // print("[DEBUGGING] Date ok")
                
                prenotato8.stringValue = prenotato8testo
                
            }
            
            let prezzoHalfDay8testo = "\(((uff8["prezzoMezzoGiorno"] as? String!)!)!)€ per 1/2 Giorno"
            let prezzoDay8testo = "\(((uff8["prezzoGiorno"] as? String!)!)!)€ al giorno"
            
            nome8.stringValue = (uff8["nome"] as? String!)!
            postazione8.stringValue = postazioni8testo
            prezzoHalfDay8.stringValue = prezzoHalfDay8testo
            prezzoDay8.stringValue = prezzoDay8testo
            //Fine Pannello8
            
        }
        
        self.esecuzioneFetch = self.esecuzioneFetch + 1
        
        print("[DEBUGGING] Fetch #\(esecuzioneFetch)")
        
        let when = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when) {
        
            _ = self.fetch()
        
        }
        
    }
    
    func addPren() {
        
        let id = (nomeStanzaText.indexOfSelectedItem) + 1
        let data_Inizio = data_InizioText.stringValue
        let data_Fine = data_FineText.stringValue
        let nomeCognomeCliente = nomeCognomeClienteText.stringValue
        
         self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prenotazione&id=\(id)&startDate=\(data_Inizio)&endDate=\(data_Fine)&cliente=\(nomeCognomeCliente)")!))
        
    }
    
    func addCliente() {
        
        let nomeCliente = nomeClienteText.stringValue
        let cognomeCliente = cognomeClienteText.stringValue
        let cellulare = cellulareText.stringValue
        let data_nascita = data_nascitaText.stringValue
        
        self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=utente&nome=\(nomeCliente)&cognome=\(cognomeCliente)&cellulare=\(cellulare)&data_nascita=\(data_nascita)&disp=0")!))
        
    }
    
    func removePren() {
        
        let id = (nomeStanzaRemoveText.indexOfSelectedItem) + 1
        
        self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prenotazione&id=\(id)&startDate=00/00/0000&endDate=00/00/0000&cliente=&disp=1")!))
        
    }
    
    @IBAction func showHomePage(_ sender: Any) {
        
        self.box2.isHidden = true
        self.box3.isHidden = true
        self.box4.isHidden = true
        self.box5.isHidden = true
        
    }
    
    @IBAction func showAddPage(_ sender: Any) {
        
        self.box2.isHidden = false
        self.box3.isHidden = true
        self.box4.isHidden = true
        self.box5.isHidden = true
        
    }
    
    @IBAction func showRemovePage(_ sender: Any) {
        
        self.box3.isHidden = false
        self.box4.isHidden = true
        self.box5.isHidden = true
        
    }
    
    @IBAction func showPricePage(_ sender: Any) {
        
        self.box4.isHidden = false
        self.box5.isHidden = true
        
    }
    
    @IBAction func addPrenButton(_ sender: Any) {
        
        _ = addPren()
        
    }
    
    @IBAction func addCliente(_ sender: Any) {
        
        _ = addCliente()
        
    }

    @IBAction func removePrenButton(_ sender: Any) {
        
        _ = removePren()
        
    }
    
    @IBAction func change1Button(_ sender: Any) {
        
        let HalfDay1var = HalfDay1.stringValue
        let Day1var = Day1.stringValue
        let Month1var = Month1.stringValue
        
        if (HalfDay1var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=1&prezzo=\(HalfDay1var)")!))
            
        }
        
        if (Day1var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=1&prezzo=\(Day1var)")!))
            
        }
        
        if (Month1var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=1&prezzo=\(Month1var)")!))
            
        }
        
    }
    
    @IBAction func change2Button(_ sender: Any) {
        
        let HalfDay2var = HalfDay2.stringValue
        let Day2var = Day2.stringValue
        let Month2var = Month2.stringValue
        
        if (HalfDay2var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=2&prezzo=\(HalfDay2var)")!))
            
        }
        
        if (Day2var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=2&prezzo=\(Day2var)")!))
            
        }
        
        if (Month2var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=2&prezzo=\(Month2var)")!))
            
        }
        
    }
    
    @IBAction func change3Button(_ sender: Any) {
        
        let HalfDay3var = Halfday3.stringValue
        let Day3var = Day3.stringValue
        let Month3var = Month3.stringValue
        
        if (HalfDay3var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=3&prezzo=\(HalfDay3var)")!))
            
        }
        
        if (Day3var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=3&prezzo=\(Day3var)")!))
            
        }
        
        if (Month3var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=3&prezzo=\(Month3var)")!))
            
        }
        
    }
    
    @IBAction func change4Button(_ sender: Any) {
        
        let HalfDay4var = Halfday4.stringValue
        let Day4var = Day4.stringValue
        let Month4var = Month4.stringValue
        
        if (HalfDay4var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=4&prezzo=\(HalfDay4var)")!))
            
        }
        
        if (Day4var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=4&prezzo=\(Day4var)")!))
            
        }
        
        if (Month4var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=4&prezzo=\(Month4var)")!))
            
        }
        
    }
    
    @IBAction func change5Button(_ sender: Any) {
        
        let HalfDay5var = Halfday5.stringValue
        let Day5var = Day5.stringValue
        let Month5var = Month5.stringValue
        
        if (HalfDay5var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=5&prezzo=\(HalfDay5var)")!))
            
        }
        
        if (Day5var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=5&prezzo=\(Day5var)")!))
            
        }
        
        if (Month5var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=5&prezzo=\(Month5var)")!))
            
        }
        
    }
    
    @IBAction func change6Button(_ sender: Any) {
        
        let HalfDay6var = Halfday6.stringValue
        let Day6var = Day6.stringValue
        let Month6var = Month6.stringValue
        
        if (HalfDay6var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=6&prezzo=\(HalfDay6var)")!))
            
        }
        
        if (Day6var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=6&prezzo=\(Day6var)")!))
            
        }
        
        if (Month6var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=6&prezzo=\(Month6var)")!))
            
        }
        
    }
    
    @IBAction func change7Button(_ sender: Any) {
        
        let HalfDay7var = Halfday7.stringValue
        let Day7var = Day7.stringValue
        let Month7var = Month7.stringValue
        
        if (HalfDay7var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=7&prezzo=\(HalfDay7var)")!))
            
        }
        
        if (Day7var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=7&prezzo=\(Day7var)")!))
            
        }
        
        if (Month7var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=7&prezzo=\(Month7var)")!))
            
        }
        
    }
    
    @IBAction func change8button(_ sender: Any) {
        
        let HalfDay8var = Halfday8.stringValue
        let Day8var = Day8.stringValue
        let Month8var = Month8.stringValue
        
        if (HalfDay8var != ""){
            
            self.myView2.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMezGiorno&id=8&prezzo=\(HalfDay8var)")!))
            
        }
        
        if (Day8var != ""){
            
            self.myView3.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoGiorno&id=8&prezzo=\(Day8var)")!))
            
        }
        
        if (Month8var != ""){
            
            self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=prezzoMese&id=8&prezzo=\(Month8var)")!))
            
        }
        
    }
    
    @IBAction func addPrenFut(_ sender: Any) {
        
        self.myView4.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/addPren.php?nome=\(nomeClienteFut.stringValue)&email=\(emailClienteFut.stringValue)&ufficio=\(nomeStanzatextFut.indexOfSelectedItem+1)&cognome=\(cognomeClienteFut.stringValue)&dataEnd=\(data_FineFut.stringValue)&cellulare=\(cellulareClienteFut.stringValue)&dataStart=\(data_InizioFut.stringValue)")!))
        
    }
    
    @IBAction func accettaPrenFut1(_ sender: Any) {
        
        let id_pren1 = prenID1.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=1&id_pren=\(id_pren1)")!))
        
    }
    
    @IBAction func elimina1(_ sender: Any) {
        
        let id_pren1 = prenID1.stringValue
        
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren1)")!))
        
    }
    
    @IBAction func avanti1Button(_ sender: Any) {
        
        self.currentIndex1 = currentIndex1 + 1
        
    }
    
    @IBAction func indietro1Button(_ sender: Any) {
        
        self.currentIndex1 = currentIndex1 - 1
        
    }
    
    func checkFut1 () {
        
        myView6.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=1")!))
        
        let dataFut = data_request(forData: "stanza1.json")
        _ = json_parseData(dataFut!)
        
        if let json1 = json_parseData(dataFut!) {
        let data_array1: NSArray = (json1["data"] as? NSArray)!
                
            var total1 = 0
                
            for _ in data_array1 {
                    
                total1 = total1 + 1
                    
            }
                
            if total1 == 0 {
                    
                prenID1.stringValue = "-";
                nomeCognomeFutInfo1.stringValue = "Non ci sono prenotazioni";
                dataInzioFineFut1.stringValue = "-"
                contattiFut1.stringValue = "-"
                avanti1.isHidden = true
                accetta1.isHidden = true
                elimina1.isHidden = true
                indietro1.isHidden = true
                    
            } else {
                    
                if total1 == 1 {
                    
                    elimina1.isHidden = false
                        
                    let Stanza1Dic: NSDictionary = data_array1[0] as! NSDictionary
                    
                    prenID1.stringValue = (Stanza1Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente1 = "\(((Stanza1Dic["nome"] as? String!)!)!) \(((Stanza1Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo1.stringValue = stringaCliente1
                    let dateFutu1 = "\(((Stanza1Dic["data_iniziale"] as? String!)!)!) - \(((Stanza1Dic["data_finale"] as? String!)!)!)"
                    dataInzioFineFut1.stringValue = dateFutu1
                    let contattiCliente1 = "\(((Stanza1Dic["email"] as? String!)!)!) ≈ \(((Stanza1Dic["cellulare"] as? String!)!)!)"
                    contattiFut1.stringValue = contattiCliente1
                    
                    if(((Stanza1Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta1.isHidden = false
                        
                    } else {
                        
                        self.accetta1.isHidden = true
                        
                    }
                    
                    avanti1.isHidden = true
                    indietro1.isHidden = true
                    
                } else {
                    
                    if (total1 > (currentIndex1+1) && currentIndex1 != 0) {
                        
                        avanti1.isHidden = false
                        indietro1.isHidden = false
                        
                        elimina1.isHidden = false
                        
                        let Stanza1Dic: NSDictionary = data_array1[currentIndex1] as! NSDictionary
                        
                        prenID1.stringValue = (Stanza1Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente1 = "\(((Stanza1Dic["nome"] as? String!)!)!) \(((Stanza1Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo1.stringValue = stringaCliente1
                        let dateFutu1 = "\(((Stanza1Dic["data_iniziale"] as? String!)!)!) - \(((Stanza1Dic["data_finale"] as? String!)!)!)"
                        dataInzioFineFut1.stringValue = dateFutu1
                        let contattiCliente1 = "\(((Stanza1Dic["email"] as? String!)!)!) ≈ \(((Stanza1Dic["cellulare"] as? String!)!)!)"
                        contattiFut1.stringValue = contattiCliente1
                        
                        if(((Stanza1Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta1.isHidden = false
                            
                        } else {
                            
                            self.accetta1.isHidden = true
                            
                        }

                        
                    } else {
                        
                        if(currentIndex1 == 0) {
                            
                            avanti1.isHidden = false
                            indietro1.isHidden = true
                            
                            elimina1.isHidden = false
                            
                            let Stanza1Dic: NSDictionary = data_array1[currentIndex1] as! NSDictionary
                            
                            prenID1.stringValue = (Stanza1Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente1 = "\(((Stanza1Dic["nome"] as? String!)!)!) \(((Stanza1Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo1.stringValue = stringaCliente1
                            let dateFutu1 = "\(((Stanza1Dic["data_iniziale"] as? String!)!)!) - \(((Stanza1Dic["data_finale"] as? String!)!)!)"
                            dataInzioFineFut1.stringValue = dateFutu1
                            let contattiCliente1 = "\(((Stanza1Dic["email"] as? String!)!)!) ≈ \(((Stanza1Dic["cellulare"] as? String!)!)!)"
                            contattiFut1.stringValue = contattiCliente1
                            
                            if(((Stanza1Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta1.isHidden = false
                                
                            } else {
                                
                                self.accetta1.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total1 == (currentIndex1+1)) {
                                
                                avanti1.isHidden = true
                                indietro1.isHidden = false
                                
                                elimina1.isHidden = false
                                
                                let Stanza1Dic: NSDictionary = data_array1[currentIndex1] as! NSDictionary
                                
                                prenID1.stringValue = (Stanza1Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente1 = "\(((Stanza1Dic["nome"] as? String!)!)!) \(((Stanza1Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo1.stringValue = stringaCliente1
                                let dateFutu1 = "\(((Stanza1Dic["data_iniziale"] as? String!)!)!) - \(((Stanza1Dic["data_finale"] as? String!)!)!)"
                                dataInzioFineFut1.stringValue = dateFutu1
                                let contattiCliente1 = "\(((Stanza1Dic["email"] as? String!)!)!) ≈ \(((Stanza1Dic["cellulare"] as? String!)!)!)"
                                contattiFut1.stringValue = contattiCliente1
                                
                                if(((Stanza1Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta1.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta1.isHidden = true
                                    
                                }

                                
                            }
                            
                        }
                        
                    }
                    
                }
                    
            }
        }
        
        let when1 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when1) {
            
            _ = self.checkFut1()
            
        }
        
    }
    
    //Fine Pannello 1
    
    //Inizio Pannello 2
    
    func checkFut2 () {
        
        myView8.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=2")!))
        
        let dataFut2 = data_request(forData: "stanza2.json")
        _ = json_parseData(dataFut2!)
        
        if let json2 = json_parseData(dataFut2!) {
            let data_array2: NSArray = (json2["data"] as? NSArray)!
            
            var total2 = 0
            
            for _ in data_array2 {
                
                total2 = total2 + 1
                
            }
            
            if total2 == 0 {
                
                prenID2.stringValue = "-";
                nomeCognomeFutInfo2.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut2.stringValue = "-"
                contattiFut2.stringValue = "-"
                avanti2.isHidden = true
                accetta2.isHidden = true
                elimina2.isHidden = true
                indietro2.isHidden = true
                
            } else {
                
                if total2 == 1 {
                    
                    elimina2.isHidden = false
                    
                    let Stanza2Dic: NSDictionary = data_array2[0] as! NSDictionary
                    
                    prenID2.stringValue = (Stanza2Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente2 = "\(((Stanza2Dic["nome"] as? String!)!)!) \(((Stanza2Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo2.stringValue = stringaCliente2
                    let dateFutu2 = "\(((Stanza2Dic["data_iniziale"] as? String!)!)!) - \(((Stanza2Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut2.stringValue = dateFutu2
                    let contattiCliente2 = "\(((Stanza2Dic["email"] as? String!)!)!) ≈ \(((Stanza2Dic["cellulare"] as? String!)!)!)"
                    contattiFut2.stringValue = contattiCliente2
                    
                    if(((Stanza2Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta2.isHidden = false
                        
                    } else {
                        
                        self.accetta2.isHidden = true
                        
                    }
                    
                    avanti2.isHidden = true
                    indietro2.isHidden = true
                    
                } else {
                    
                    if (total2 > (currentIndex2+1) && currentIndex2 != 0) {
                        
                        avanti2.isHidden = false
                        indietro2.isHidden = false
                        
                        elimina2.isHidden = false
                        
                        let Stanza2Dic: NSDictionary = data_array2[currentIndex2] as! NSDictionary
                        
                        prenID2.stringValue = (Stanza2Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente2 = "\(((Stanza2Dic["nome"] as? String!)!)!) \(((Stanza2Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo2.stringValue = stringaCliente2
                        let dateFutu2 = "\(((Stanza2Dic["data_iniziale"] as? String!)!)!) - \(((Stanza2Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut2.stringValue = dateFutu2
                        let contattiCliente2 = "\(((Stanza2Dic["email"] as? String!)!)!) ≈ \(((Stanza2Dic["cellulare"] as? String!)!)!)"
                        contattiFut2.stringValue = contattiCliente2
                        
                        if(((Stanza2Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta2.isHidden = false
                            
                        } else {
                            
                            self.accetta2.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex2 == 0) {
                            
                            avanti2.isHidden = false
                            indietro2.isHidden = true
                            
                            elimina2.isHidden = false
                            
                            let Stanza2Dic: NSDictionary = data_array2[currentIndex2] as! NSDictionary
                            
                            prenID2.stringValue = (Stanza2Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente2 = "\(((Stanza2Dic["nome"] as? String!)!)!) \(((Stanza2Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo2.stringValue = stringaCliente2
                            let dateFutu2 = "\(((Stanza2Dic["data_iniziale"] as? String!)!)!) - \(((Stanza2Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut2.stringValue = dateFutu2
                            let contattiCliente2 = "\(((Stanza2Dic["email"] as? String!)!)!) ≈ \(((Stanza2Dic["cellulare"] as? String!)!)!)"
                            contattiFut2.stringValue = contattiCliente2
                            
                            if(((Stanza2Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta2.isHidden = false
                                
                            } else {
                                
                                self.accetta2.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total2 == (currentIndex2+1)) {
                                
                                avanti2.isHidden = true
                                indietro2.isHidden = false
                                
                                elimina2.isHidden = false
                                
                                let Stanza2Dic: NSDictionary = data_array2[currentIndex2] as! NSDictionary
                                
                                prenID2.stringValue = (Stanza2Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente2 = "\(((Stanza2Dic["nome"] as? String!)!)!) \(((Stanza2Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo2.stringValue = stringaCliente2
                                let dateFutu2 = "\(((Stanza2Dic["data_iniziale"] as? String!)!)!) - \(((Stanza2Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut2.stringValue = dateFutu2
                                let contattiCliente2 = "\(((Stanza2Dic["email"] as? String!)!)!) ≈ \(((Stanza2Dic["cellulare"] as? String!)!)!)"
                                contattiFut2.stringValue = contattiCliente2
                                
                                if(((Stanza2Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta2.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta2.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when2 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when2) {
            
            _ = self.checkFut2()
            
        }
        
    }
    
    //Fine Pannello 2
    
    //Inizio Pannello 3
    
    func checkFut3 () {
        
        myView9.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=3")!))
        
        let dataFut3 = data_request(forData: "stanza3.json")
        _ = json_parseData(dataFut3!)
        
        if let json3 = json_parseData(dataFut3!) {
            let data_array3: NSArray = (json3["data"] as? NSArray)!
            
            var total3 = 0
            
            for _ in data_array3 {
                
                total3 = total3 + 1
                
            }
            
            if total3 == 0 {
                
                prenID3.stringValue = "-";
                nomeCognomeFutInfo3.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut3.stringValue = "-"
                contattiFut3.stringValue = "-"
                avanti3.isHidden = true
                accetta3.isHidden = true
                elimina3.isHidden = true
                indietro3.isHidden = true
                
            } else {
                
                if total3 == 1 {
                    
                    elimina3.isHidden = false
                    
                    let Stanza3Dic: NSDictionary = data_array3[0] as! NSDictionary
                    
                    prenID3.stringValue = (Stanza3Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente3 = "\(((Stanza3Dic["nome"] as? String!)!)!) \(((Stanza3Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo3.stringValue = stringaCliente3
                    let dateFutu3 = "\(((Stanza3Dic["data_iniziale"] as? String!)!)!) - \(((Stanza3Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut3.stringValue = dateFutu3
                    let contattiCliente3 = "\(((Stanza3Dic["email"] as? String!)!)!) ≈ \(((Stanza3Dic["cellulare"] as? String!)!)!)"
                    contattiFut3.stringValue = contattiCliente3
                    
                    if(((Stanza3Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta3.isHidden = false
                        
                    } else {
                        
                        self.accetta3.isHidden = true
                        
                    }
                    
                    avanti3.isHidden = true
                    indietro3.isHidden = true
                    
                } else {
                    
                    if (total3 > (currentIndex3+1) && currentIndex3 != 0) {
                        
                        avanti3.isHidden = false
                        indietro3.isHidden = false
                        
                        elimina3.isHidden = false
                        
                        let Stanza3Dic: NSDictionary = data_array3[currentIndex3] as! NSDictionary
                        
                        prenID3.stringValue = (Stanza3Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente3 = "\(((Stanza3Dic["nome"] as? String!)!)!) \(((Stanza3Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo3.stringValue = stringaCliente3
                        let dateFutu3 = "\(((Stanza3Dic["data_iniziale"] as? String!)!)!) - \(((Stanza3Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut3.stringValue = dateFutu3
                        let contattiCliente3 = "\(((Stanza3Dic["email"] as? String!)!)!) ≈ \(((Stanza3Dic["cellulare"] as? String!)!)!)"
                        contattiFut3.stringValue = contattiCliente3
                        
                        if(((Stanza3Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta3.isHidden = false
                            
                        } else {
                            
                            self.accetta3.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex3 == 0) {
                            
                            avanti3.isHidden = false
                            indietro3.isHidden = true
                            
                            elimina3.isHidden = false
                            
                            let Stanza3Dic: NSDictionary = data_array3[currentIndex3] as! NSDictionary
                            
                            prenID3.stringValue = (Stanza3Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente3 = "\(((Stanza3Dic["nome"] as? String!)!)!) \(((Stanza3Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo3.stringValue = stringaCliente3
                            let dateFutu3 = "\(((Stanza3Dic["data_iniziale"] as? String!)!)!) - \(((Stanza3Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut3.stringValue = dateFutu3
                            let contattiCliente3 = "\(((Stanza3Dic["email"] as? String!)!)!) ≈ \(((Stanza3Dic["cellulare"] as? String!)!)!)"
                            contattiFut3.stringValue = contattiCliente3
                            
                            if(((Stanza3Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta3.isHidden = false
                                
                            } else {
                                
                                self.accetta3.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total3 == (currentIndex3+1)) {
                                
                                avanti3.isHidden = true
                                indietro3.isHidden = false
                                
                                elimina3.isHidden = false
                                
                                let Stanza3Dic: NSDictionary = data_array3[currentIndex3] as! NSDictionary
                                
                                prenID3.stringValue = (Stanza3Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente3 = "\(((Stanza3Dic["nome"] as? String!)!)!) \(((Stanza3Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo3.stringValue = stringaCliente3
                                let dateFutu3 = "\(((Stanza3Dic["data_iniziale"] as? String!)!)!) - \(((Stanza3Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut3.stringValue = dateFutu3
                                let contattiCliente3 = "\(((Stanza3Dic["email"] as? String!)!)!) ≈ \(((Stanza3Dic["cellulare"] as? String!)!)!)"
                                contattiFut3.stringValue = contattiCliente3
                                
                                if(((Stanza3Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta3.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta3.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when3 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when3) {
            
            _ = self.checkFut3()
            
        }
        
    }
    
    func checkFut4 () {
        
        myView10.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=4")!))
        
        let dataFut4 = data_request(forData: "stanza4.json")
        _ = json_parseData(dataFut4!)
        
        if let json4 = json_parseData(dataFut4!) {
            let data_array4: NSArray = (json4["data"] as? NSArray)!
            
            var total4 = 0
            
            for _ in data_array4 {
                
                total4 = total4 + 1
                
            }
            
            if total4 == 0 {
                
                prenID4.stringValue = "-";
                nomeCognomeFutInfo4.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut4.stringValue = "-"
                contattiFut4.stringValue = "-"
                avanti4.isHidden = true
                accetta4.isHidden = true
                elimina4.isHidden = true
                indietro4.isHidden = true
                
            } else {
                
                if total4 == 1 {
                    
                    elimina4.isHidden = false
                    
                    let Stanza4Dic: NSDictionary = data_array4[0] as! NSDictionary
                    
                    prenID4.stringValue = (Stanza4Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente4 = "\(((Stanza4Dic["nome"] as? String!)!)!) \(((Stanza4Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo4.stringValue = stringaCliente4
                    let dateFutu4 = "\(((Stanza4Dic["data_iniziale"] as? String!)!)!) - \(((Stanza4Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut4.stringValue = dateFutu4
                    let contattiCliente4 = "\(((Stanza4Dic["email"] as? String!)!)!) ≈ \(((Stanza4Dic["cellulare"] as? String!)!)!)"
                    contattiFut4.stringValue = contattiCliente4
                    
                    if(((Stanza4Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta4.isHidden = false
                        
                    } else {
                        
                        self.accetta4.isHidden = true
                        
                    }
                    
                    avanti4.isHidden = true
                    indietro4.isHidden = true
                    
                } else {
                    
                    if (total4 > (currentIndex4+1) && currentIndex4 != 0) {
                        
                        avanti4.isHidden = false
                        indietro4.isHidden = false
                        
                        elimina4.isHidden = false
                        
                        let Stanza4Dic: NSDictionary = data_array4[currentIndex4] as! NSDictionary
                        
                        prenID4.stringValue = (Stanza4Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente4 = "\(((Stanza4Dic["nome"] as? String!)!)!) \(((Stanza4Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo4.stringValue = stringaCliente4
                        let dateFutu4 = "\(((Stanza4Dic["data_iniziale"] as? String!)!)!) - \(((Stanza4Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut4.stringValue = dateFutu4
                        let contattiCliente4 = "\(((Stanza4Dic["email"] as? String!)!)!) ≈ \(((Stanza4Dic["cellulare"] as? String!)!)!)"
                        contattiFut4.stringValue = contattiCliente4
                        
                        if(((Stanza4Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta4.isHidden = false
                            
                        } else {
                            
                            self.accetta4.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex4 == 0) {
                            
                            avanti4.isHidden = false
                            indietro4.isHidden = true
                            
                            elimina4.isHidden = false
                            
                            let Stanza4Dic: NSDictionary = data_array4[currentIndex4] as! NSDictionary
                            
                            prenID4.stringValue = (Stanza4Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente4 = "\(((Stanza4Dic["nome"] as? String!)!)!) \(((Stanza4Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo4.stringValue = stringaCliente4
                            let dateFutu4 = "\(((Stanza4Dic["data_iniziale"] as? String!)!)!) - \(((Stanza4Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut4.stringValue = dateFutu4
                            let contattiCliente4 = "\(((Stanza4Dic["email"] as? String!)!)!) ≈ \(((Stanza4Dic["cellulare"] as? String!)!)!)"
                            contattiFut4.stringValue = contattiCliente4
                            
                            if(((Stanza4Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta4.isHidden = false
                                
                            } else {
                                
                                self.accetta4.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total4 == (currentIndex4+1)) {
                                
                                avanti4.isHidden = true
                                indietro4.isHidden = false
                                
                                elimina4.isHidden = false
                                
                                let Stanza4Dic: NSDictionary = data_array4[currentIndex4] as! NSDictionary
                                
                                prenID4.stringValue = (Stanza4Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente4 = "\(((Stanza4Dic["nome"] as? String!)!)!) \(((Stanza4Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo4.stringValue = stringaCliente4
                                let dateFutu4 = "\(((Stanza4Dic["data_iniziale"] as? String!)!)!) - \(((Stanza4Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut4.stringValue = dateFutu4
                                let contattiCliente4 = "\(((Stanza4Dic["email"] as? String!)!)!) ≈ \(((Stanza4Dic["cellulare"] as? String!)!)!)"
                                contattiFut4.stringValue = contattiCliente4
                                
                                if(((Stanza4Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta4.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta4.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when4 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when4) {
            
            _ = self.checkFut4()
            
        }
        
    }

    
    @IBAction func indietro2Button(_ sender: Any) {
        
        currentIndex2 = currentIndex2 - 1
        
    }
    
    @IBAction func avanti2Button(_ sender: Any) {
        
        currentIndex2 = currentIndex2 + 1
        
    }
    
    @IBAction func accetta2Button(_ sender: Any) {
        
        let id_pren2 = prenID2.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=2&id_pren=\(id_pren2)")!))
        
    }

    @IBAction func elimina2Button(_ sender: Any) {
        
        let id_pren2 = prenID2.stringValue
        
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren2)")!))
        
    }
    
    @IBAction func indietro3Button(_ sender: Any) {
        
        currentIndex3 = currentIndex3 - 1
        
    }
    
    @IBAction func avanti3Button(_ sender: Any) {
        
        currentIndex3 = currentIndex3 + 1
        
    }
    
    @IBAction func accetta3Button(_ sender: Any) {
        
        
        let id_pren3 = prenID3.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=2&id_pren=\(id_pren3)")!))
        
    }
    
    @IBAction func elimina3Button(_ sender: Any) {
        
        let id_pren3 = prenID3.stringValue
        
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren3)")!))
        
    }
    
    @IBAction func indietro4Button(_ sender: Any) {
        
        currentIndex4 = currentIndex4 - 1
        
    }
    
    @IBAction func avanti4Button(_ sender: Any) {
        
        currentIndex4 = currentIndex4 + 1
        
    }
    
    @IBAction func accetta4Button(_ sender: Any) {
        
        let id_pren4 = prenID4.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=4&id_pren=\(id_pren4)")!))
        
    }

    @IBAction func elimina4Button(_ sender: Any) {
        
        let id_pren4 = prenID4.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren4)")!))
        
    }
    
    @IBAction func indietro5Button(_ sender: Any) {
        
        currentIndex5 = currentIndex5 - 1
        
    }
    
    @IBAction func avanti5Button(_ sender: Any) {
        
        currentIndex5 = currentIndex5 + 1
        
    }
    
    @IBAction func accetta5Button(_ sender: Any) {
        
        let id_pren5 = prenID5.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=5&id_pren=\(id_pren5)")!))
        
    }
    
    @IBAction func elimina5Button(_ sender: Any) {
        
        let id_pren5 = prenID5.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren5)")!))
        
    }
    
    func checkFut5 () {
        
        myView11.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=5")!))
        
        let dataFut5 = data_request(forData: "stanza5.json")
        _ = json_parseData(dataFut5!)
        
        if let json5 = json_parseData(dataFut5!) {
            let data_array5: NSArray = (json5["data"] as? NSArray)!
            
            var total5 = 0
            
            for _ in data_array5 {
                
                total5 = total5 + 1
                
            }
            
            if total5 == 0 {
                
                prenID5.stringValue = "-";
                nomeCognomeFutInfo5.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut5.stringValue = "-"
                contattiFut5.stringValue = "-"
                avanti5.isHidden = true
                accetta5.isHidden = true
                elimina5.isHidden = true
                indietro5.isHidden = true
                
            } else {
                
                if total5 == 1 {
                    
                    elimina5.isHidden = false
                    
                    let Stanza5Dic: NSDictionary = data_array5[0] as! NSDictionary
                    
                    prenID5.stringValue = (Stanza5Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente5 = "\(((Stanza5Dic["nome"] as? String!)!)!) \(((Stanza5Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo5.stringValue = stringaCliente5
                    let dateFutu5 = "\(((Stanza5Dic["data_iniziale"] as? String!)!)!) - \(((Stanza5Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut5.stringValue = dateFutu5
                    let contattiCliente5 = "\(((Stanza5Dic["email"] as? String!)!)!) ≈ \(((Stanza5Dic["cellulare"] as? String!)!)!)"
                    contattiFut5.stringValue = contattiCliente5
                    
                    if(((Stanza5Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta5.isHidden = false
                        
                    } else {
                        
                        self.accetta5.isHidden = true
                        
                    }
                    
                    avanti5.isHidden = true
                    indietro5.isHidden = true
                    
                } else {
                    
                    if (total5 > (currentIndex5+1) && currentIndex5 != 0) {
                        
                        avanti5.isHidden = false
                        indietro5.isHidden = false
                        
                        elimina5.isHidden = false
                        
                        let Stanza5Dic: NSDictionary = data_array5[currentIndex5] as! NSDictionary
                        
                        prenID5.stringValue = (Stanza5Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente5 = "\(((Stanza5Dic["nome"] as? String!)!)!) \(((Stanza5Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo5.stringValue = stringaCliente5
                        let dateFutu5 = "\(((Stanza5Dic["data_iniziale"] as? String!)!)!) - \(((Stanza5Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut5.stringValue = dateFutu5
                        let contattiCliente5 = "\(((Stanza5Dic["email"] as? String!)!)!) ≈ \(((Stanza5Dic["cellulare"] as? String!)!)!)"
                        contattiFut5.stringValue = contattiCliente5
                        
                        if(((Stanza5Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta5.isHidden = false
                            
                        } else {
                            
                            self.accetta5.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex5 == 0) {
                            
                            avanti5.isHidden = false
                            indietro5.isHidden = true
                            
                            elimina5.isHidden = false
                            
                            let Stanza5Dic: NSDictionary = data_array5[currentIndex5] as! NSDictionary
                            
                            prenID5.stringValue = (Stanza5Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente5 = "\(((Stanza5Dic["nome"] as? String!)!)!) \(((Stanza5Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo5.stringValue = stringaCliente5
                            let dateFutu5 = "\(((Stanza5Dic["data_iniziale"] as? String!)!)!) - \(((Stanza5Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut5.stringValue = dateFutu5
                            let contattiCliente5 = "\(((Stanza5Dic["email"] as? String!)!)!) ≈ \(((Stanza5Dic["cellulare"] as? String!)!)!)"
                            contattiFut5.stringValue = contattiCliente5
                            
                            if(((Stanza5Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta5.isHidden = false
                                
                            } else {
                                
                                self.accetta5.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total5 == (currentIndex5+1)) {
                                
                                avanti5.isHidden = true
                                indietro5.isHidden = false
                                
                                elimina5.isHidden = false
                                
                                let Stanza5Dic: NSDictionary = data_array5[currentIndex5] as! NSDictionary
                                
                                prenID5.stringValue = (Stanza5Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente5 = "\(((Stanza5Dic["nome"] as? String!)!)!) \(((Stanza5Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo5.stringValue = stringaCliente5
                                let dateFutu5 = "\(((Stanza5Dic["data_iniziale"] as? String!)!)!) - \(((Stanza5Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut5.stringValue = dateFutu5
                                let contattiCliente5 = "\(((Stanza5Dic["email"] as? String!)!)!) ≈ \(((Stanza5Dic["cellulare"] as? String!)!)!)"
                                contattiFut5.stringValue = contattiCliente5
                                
                                if(((Stanza5Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta5.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta5.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when5 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when5) {
            
            _ = self.checkFut5()
            
        }
        
    }
    
    func checkFut6 () {
        
        myView12.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=6")!))
        
        let dataFut6 = data_request(forData: "stanza6.json")
        _ = json_parseData(dataFut6!)
        
        if let json6 = json_parseData(dataFut6!) {
            let data_array6: NSArray = (json6["data"] as? NSArray)!
            
            var total6 = 0
            
            for _ in data_array6 {
                
                total6 = total6 + 1
                
            }
            
            if total6 == 0 {
                
                prenID6.stringValue = "-";
                nomeCognomeFutInfo6.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut6.stringValue = "-"
                contattiFut6.stringValue = "-"
                avanti6.isHidden = true
                accetta6.isHidden = true
                elimina6.isHidden = true
                indietro6.isHidden = true
                
            } else {
                
                if total6 == 1 {
                    
                    elimina6.isHidden = false
                    
                    let Stanza6Dic: NSDictionary = data_array6[0] as! NSDictionary
                    
                    prenID6.stringValue = (Stanza6Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente6 = "\(((Stanza6Dic["nome"] as? String!)!)!) \(((Stanza6Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo6.stringValue = stringaCliente6
                    let dateFutu6 = "\(((Stanza6Dic["data_iniziale"] as? String!)!)!) - \(((Stanza6Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut6.stringValue = dateFutu6
                    let contattiCliente6 = "\(((Stanza6Dic["email"] as? String!)!)!) ≈ \(((Stanza6Dic["cellulare"] as? String!)!)!)"
                    contattiFut6.stringValue = contattiCliente6
                    
                    if(((Stanza6Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta6.isHidden = false
                        
                    } else {
                        
                        self.accetta6.isHidden = true
                        
                    }
                    
                    avanti6.isHidden = true
                    indietro6.isHidden = true
                    
                } else {
                    
                    if (total6 > (currentIndex6+1) && currentIndex6 != 0) {
                        
                        avanti6.isHidden = false
                        indietro6.isHidden = false
                        
                        elimina6.isHidden = false
                        
                        let Stanza6Dic: NSDictionary = data_array6[currentIndex6] as! NSDictionary
                        
                        prenID6.stringValue = (Stanza6Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente6 = "\(((Stanza6Dic["nome"] as? String!)!)!) \(((Stanza6Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo6.stringValue = stringaCliente6
                        let dateFutu6 = "\(((Stanza6Dic["data_iniziale"] as? String!)!)!) - \(((Stanza6Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut6.stringValue = dateFutu6
                        let contattiCliente6 = "\(((Stanza6Dic["email"] as? String!)!)!) ≈ \(((Stanza6Dic["cellulare"] as? String!)!)!)"
                        contattiFut6.stringValue = contattiCliente6
                        
                        if(((Stanza6Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta6.isHidden = false
                            
                        } else {
                            
                            self.accetta6.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex6 == 0) {
                            
                            avanti6.isHidden = false
                            indietro6.isHidden = true
                            
                            elimina6.isHidden = false
                            
                            let Stanza6Dic: NSDictionary = data_array6[currentIndex6] as! NSDictionary
                            
                            prenID6.stringValue = (Stanza6Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente6 = "\(((Stanza6Dic["nome"] as? String!)!)!) \(((Stanza6Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo6.stringValue = stringaCliente6
                            let dateFutu6 = "\(((Stanza6Dic["data_iniziale"] as? String!)!)!) - \(((Stanza6Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut6.stringValue = dateFutu6
                            let contattiCliente6 = "\(((Stanza6Dic["email"] as? String!)!)!) ≈ \(((Stanza6Dic["cellulare"] as? String!)!)!)"
                            contattiFut6.stringValue = contattiCliente6
                            
                            if(((Stanza6Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta6.isHidden = false
                                
                            } else {
                                
                                self.accetta6.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total6 == (currentIndex6+1)) {
                                
                                avanti6.isHidden = true
                                indietro6.isHidden = false
                                
                                elimina6.isHidden = false
                                
                                let Stanza6Dic: NSDictionary = data_array6[currentIndex6] as! NSDictionary
                                
                                prenID6.stringValue = (Stanza6Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente6 = "\(((Stanza6Dic["nome"] as? String!)!)!) \(((Stanza6Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo6.stringValue = stringaCliente6
                                let dateFutu6 = "\(((Stanza6Dic["data_iniziale"] as? String!)!)!) - \(((Stanza6Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut6.stringValue = dateFutu6
                                let contattiCliente6 = "\(((Stanza6Dic["email"] as? String!)!)!) ≈ \(((Stanza6Dic["cellulare"] as? String!)!)!)"
                                contattiFut6.stringValue = contattiCliente6
                                
                                if(((Stanza6Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta6.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta6.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when6 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when6) {
            
            _ = self.checkFut6()
            
        }
        
    }
    
    @IBAction func indietro6Button(_ sender: Any) {
        
        currentIndex6 = currentIndex6 - 1
        
    }
    
    @IBAction func avanti6Button(_ sender: Any) {
        
        currentIndex6 = currentIndex6 + 1
        
    }
    
    @IBAction func accetta6Button(_ sender: Any) {
        
        let id_pren6 = prenID6.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=6&id_pren=\(id_pren6)")!))
        
    }
    
    @IBAction func elimina6Button(_ sender: Any) {
        
        let id_pren6 = prenID6.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren6)")!))
        
    }
    
    func checkFut7 () {
        
        myView13.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=7")!))
        
        let dataFut7 = data_request(forData: "stanza7.json")
        _ = json_parseData(dataFut7!)
        
        if let json7 = json_parseData(dataFut7!) {
            let data_array7: NSArray = (json7["data"] as? NSArray)!
            
            var total7 = 0
            
            for _ in data_array7 {
                
                total7 = total7 + 1
                
            }
            
            if total7 == 0 {
                
                prenID7.stringValue = "-";
                nomeCognomeFutInfo7.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut7.stringValue = "-"
                contattiFut7.stringValue = "-"
                avanti7.isHidden = true
                accetta7.isHidden = true
                elimina7.isHidden = true
                indietro7.isHidden = true
                
            } else {
                
                if total7 == 1 {
                    
                    elimina7.isHidden = false
                    
                    let Stanza7Dic: NSDictionary = data_array7[0] as! NSDictionary
                    
                    prenID7.stringValue = (Stanza7Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente7 = "\(((Stanza7Dic["nome"] as? String!)!)!) \(((Stanza7Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo7.stringValue = stringaCliente7
                    let dateFutu7 = "\(((Stanza7Dic["data_iniziale"] as? String!)!)!) - \(((Stanza7Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut7.stringValue = dateFutu7
                    let contattiCliente7 = "\(((Stanza7Dic["email"] as? String!)!)!) ≈ \(((Stanza7Dic["cellulare"] as? String!)!)!)"
                    contattiFut7.stringValue = contattiCliente7
                    
                    if(((Stanza7Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta7.isHidden = false
                        
                    } else {
                        
                        self.accetta7.isHidden = true
                        
                    }
                    
                    avanti7.isHidden = true
                    indietro7.isHidden = true
                    
                } else {
                    
                    if (total7 > (currentIndex7+1) && currentIndex7 != 0) {
                        
                        avanti7.isHidden = false
                        indietro7.isHidden = false
                        
                        elimina7.isHidden = false
                        
                        let Stanza7Dic: NSDictionary = data_array7[currentIndex7] as! NSDictionary
                        
                        prenID7.stringValue = (Stanza7Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente7 = "\(((Stanza7Dic["nome"] as? String!)!)!) \(((Stanza7Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo7.stringValue = stringaCliente7
                        let dateFutu7 = "\(((Stanza7Dic["data_iniziale"] as? String!)!)!) - \(((Stanza7Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut7.stringValue = dateFutu7
                        let contattiCliente7 = "\(((Stanza7Dic["email"] as? String!)!)!) ≈ \(((Stanza7Dic["cellulare"] as? String!)!)!)"
                        contattiFut7.stringValue = contattiCliente7
                        
                        if(((Stanza7Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta7.isHidden = false
                            
                        } else {
                            
                            self.accetta7.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex7 == 0) {
                            
                            avanti7.isHidden = false
                            indietro7.isHidden = true
                            
                            elimina7.isHidden = false
                            
                            let Stanza7Dic: NSDictionary = data_array7[currentIndex7] as! NSDictionary
                            
                            prenID7.stringValue = (Stanza7Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente7 = "\(((Stanza7Dic["nome"] as? String!)!)!) \(((Stanza7Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo7.stringValue = stringaCliente7
                            let dateFutu7 = "\(((Stanza7Dic["data_iniziale"] as? String!)!)!) - \(((Stanza7Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut7.stringValue = dateFutu7
                            let contattiCliente7 = "\(((Stanza7Dic["email"] as? String!)!)!) ≈ \(((Stanza7Dic["cellulare"] as? String!)!)!)"
                            contattiFut7.stringValue = contattiCliente7
                            
                            if(((Stanza7Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta7.isHidden = false
                                
                            } else {
                                
                                self.accetta7.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total7 == (currentIndex7+1)) {
                                
                                avanti7.isHidden = true
                                indietro7.isHidden = false
                                
                                elimina7.isHidden = false
                                
                                let Stanza7Dic: NSDictionary = data_array7[currentIndex7] as! NSDictionary
                                
                                prenID7.stringValue = (Stanza7Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente7 = "\(((Stanza7Dic["nome"] as? String!)!)!) \(((Stanza7Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo7.stringValue = stringaCliente7
                                let dateFutu7 = "\(((Stanza7Dic["data_iniziale"] as? String!)!)!) - \(((Stanza7Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut7.stringValue = dateFutu7
                                let contattiCliente7 = "\(((Stanza7Dic["email"] as? String!)!)!) ≈ \(((Stanza7Dic["cellulare"] as? String!)!)!)"
                                contattiFut7.stringValue = contattiCliente7
                                
                                if(((Stanza7Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta7.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta7.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when7 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when7) {
            
            _ = self.checkFut7()
            
        }
        
    }
    
    @IBAction func indietro7Button(_ sender: Any) {
        
        currentIndex7 = currentIndex7 - 1
        
    }
    
    @IBAction func avanti7Button(_ sender: Any) {
        
        currentIndex7 = currentIndex7 + 1
        
    }
    
    @IBAction func accetta7Button(_ sender: Any) {
        
        let id_pren7 = prenID6.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=7&id_pren=\(id_pren7)")!))
        
    }
    
    @IBAction func elimina7Button(_ sender: Any) {
        
        let id_pren7 = prenID7.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren7)")!))
        
    }
    
    func checkFut8 () {
        
        myView14.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/fetch2.php?idStanza=8")!))
        
        let dataFut8 = data_request(forData: "stanza8.json")
        _ = json_parseData(dataFut8!)
        
        if let json8 = json_parseData(dataFut8!) {
            let data_array8: NSArray = (json8["data"] as? NSArray)!
            
            var total8 = 0
            
            for _ in data_array8 {
                
                total8 = total8 + 1
                
            }
            
            if total8 == 0 {
                
                prenID8.stringValue = "-";
                nomeCognomeFutInfo8.stringValue = "Non ci sono prenotazioni";
                dataInizioFineFut8.stringValue = "-"
                contattiFut8.stringValue = "-"
                avanti8.isHidden = true
                accetta8.isHidden = true
                elimina8.isHidden = true
                indietro8.isHidden = true
                
            } else {
                
                if total8 == 1 {
                    
                    elimina8.isHidden = false
                    
                    let Stanza8Dic: NSDictionary = data_array8[0] as! NSDictionary
                    
                    prenID8.stringValue = (Stanza8Dic["id_prenotazione"] as? String!)!;
                    let stringaCliente8 = "\(((Stanza8Dic["nome"] as? String!)!)!) \(((Stanza8Dic["cognome"] as? String!)!)!)"
                    nomeCognomeFutInfo8.stringValue = stringaCliente8
                    let dateFutu8 = "\(((Stanza8Dic["data_iniziale"] as? String!)!)!) - \(((Stanza8Dic["data_finale"] as? String!)!)!)"
                    dataInizioFineFut8.stringValue = dateFutu8
                    let contattiCliente8 = "\(((Stanza8Dic["email"] as? String!)!)!) ≈ \(((Stanza8Dic["cellulare"] as? String!)!)!)"
                    contattiFut8.stringValue = contattiCliente8
                    
                    if(((Stanza8Dic["accettata"] as? String!)!)! == "0") {
                        
                        self.accetta8.isHidden = false
                        
                    } else {
                        
                        self.accetta8.isHidden = true
                        
                    }
                    
                    avanti8.isHidden = true
                    indietro8.isHidden = true
                    
                } else {
                    
                    if (total8 > (currentIndex8+1) && currentIndex8 != 0) {
                        
                        avanti8.isHidden = false
                        indietro8.isHidden = false
                        
                        elimina8.isHidden = false
                        
                        let Stanza8Dic: NSDictionary = data_array8[currentIndex8] as! NSDictionary
                        
                        prenID8.stringValue = (Stanza8Dic["id_prenotazione"] as? String!)!;
                        let stringaCliente8 = "\(((Stanza8Dic["nome"] as? String!)!)!) \(((Stanza8Dic["cognome"] as? String!)!)!)"
                        nomeCognomeFutInfo8.stringValue = stringaCliente8
                        let dateFutu8 = "\(((Stanza8Dic["data_iniziale"] as? String!)!)!) - \(((Stanza8Dic["data_finale"] as? String!)!)!)"
                        dataInizioFineFut8.stringValue = dateFutu8
                        let contattiCliente8 = "\(((Stanza8Dic["email"] as? String!)!)!) ≈ \(((Stanza8Dic["cellulare"] as? String!)!)!)"
                        contattiFut8.stringValue = contattiCliente8
                        
                        if(((Stanza8Dic["accettata"] as? String!)!)! == "0") {
                            
                            self.accetta8.isHidden = false
                            
                        } else {
                            
                            self.accetta8.isHidden = true
                            
                        }
                        
                        
                    } else {
                        
                        if(currentIndex8 == 0) {
                            
                            avanti8.isHidden = false
                            indietro8.isHidden = true
                            
                            elimina8.isHidden = false
                            
                            let Stanza8Dic: NSDictionary = data_array8[currentIndex8] as! NSDictionary
                            
                            prenID8.stringValue = (Stanza8Dic["id_prenotazione"] as? String!)!;
                            let stringaCliente8 = "\(((Stanza8Dic["nome"] as? String!)!)!) \(((Stanza8Dic["cognome"] as? String!)!)!)"
                            nomeCognomeFutInfo8.stringValue = stringaCliente8
                            let dateFutu8 = "\(((Stanza8Dic["data_iniziale"] as? String!)!)!) - \(((Stanza8Dic["data_finale"] as? String!)!)!)"
                            dataInizioFineFut8.stringValue = dateFutu8
                            let contattiCliente8 = "\(((Stanza8Dic["email"] as? String!)!)!) ≈ \(((Stanza8Dic["cellulare"] as? String!)!)!)"
                            contattiFut8.stringValue = contattiCliente8
                            
                            if(((Stanza8Dic["accettata"] as? String!)!)! == "0") {
                                
                                self.accetta8.isHidden = false
                                
                            } else {
                                
                                self.accetta8.isHidden = true
                                
                            }
                            
                        } else {
                            
                            if (total8 == (currentIndex8+1)) {
                                
                                avanti8.isHidden = true
                                indietro8.isHidden = false
                                
                                elimina8.isHidden = false
                                
                                let Stanza8Dic: NSDictionary = data_array8[currentIndex8] as! NSDictionary
                                
                                prenID8.stringValue = (Stanza8Dic["id_prenotazione"] as? String!)!;
                                let stringaCliente8 = "\(((Stanza8Dic["nome"] as? String!)!)!) \(((Stanza8Dic["cognome"] as? String!)!)!)"
                                nomeCognomeFutInfo8.stringValue = stringaCliente8
                                let dateFutu8 = "\(((Stanza8Dic["data_iniziale"] as? String!)!)!) - \(((Stanza8Dic["data_finale"] as? String!)!)!)"
                                dataInizioFineFut8.stringValue = dateFutu8
                                let contattiCliente8 = "\(((Stanza8Dic["email"] as? String!)!)!) ≈ \(((Stanza8Dic["cellulare"] as? String!)!)!)"
                                contattiFut8.stringValue = contattiCliente8
                                
                                if(((Stanza8Dic["accettata"] as? String!)!)! == "0") {
                                    
                                    self.accetta8.isHidden = false
                                    
                                } else {
                                    
                                    self.accetta8.isHidden = true
                                    
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        let when8 = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when8) {
            
            _ = self.checkFut8()
            
        }
        
    }

    @IBAction func indietro8Button(_ sender: Any) {
        
        currentIndex8 = currentIndex8 - 1
        
    }
    
    @IBAction func avanti8Button(_ sender: Any) {
        
        currentIndex8 = currentIndex8 + 1
        
    }

    @IBAction func accetta8Button(_ sender: Any) {
        
        let id_pren8 = prenID8.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=accettazione&stanza=8&id_pren=\(id_pren8)")!))
        
    }
    
    @IBAction func elimina8Button(_ sender: Any) {
        
        let id_pren8 = prenID8.stringValue
        
        self.myView7.mainFrame.load(URLRequest(url: URL(string: "http://127.0.0.1/kds/api/edit.php?source=eliminazione&id_pren=\(id_pren8)")!))
        
    }
    
    @IBAction func showBox5(_ sender: Any) {
        
        self.box5.isHidden = false
        
    }
    
}

