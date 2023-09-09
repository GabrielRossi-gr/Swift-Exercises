//
//  ViewController.swift
//  Songs-UIKit
//
//  Created by Gabriel Rossi on 03/08/23.
//

import UIKit
import AudioToolbox
import AVFAudio


var songID = 1255
// 1104,
// 1322,
// 1255,

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var audioPlayer: AVAudioPlayer?

        
        // Localize o caminho do arquivo de som no Bundle
        if let soundFilePath = Bundle.main.path(forResource: "NomeDoSeuSom", ofType: "mp3") {
            let soundFileURL = URL(fileURLWithPath: soundFilePath)

            do {
                // Inicialize o AVAudioPlayer com o URL do arquivo de som
                audioPlayer = try AVAudioPlayer(contentsOf: soundFileURL)

                // Prepare o AVAudioPlayer para reprodução
                audioPlayer?.prepareToPlay()
            } catch {
                // Lidar com possíveis erros na inicialização do AVAudioPlayer
                print("Erro ao inicializar o AVAudioPlayer: \(error)")
            }
        }
        
        
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        //vibração
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
//        AudioServicesPlaySystemSound()
        song(songID: songID)

//        song(songID: songID)
        print("\(songID)")
    }
    
    @IBAction func nextSong(_ sender: Any) {
        songID += 1
        song(songID: songID)
        print("song id = \(songID)")
    }
    @IBAction func prevousSong(_ sender: Any) {
        songID -= 1
        song(songID: songID)

        print("song id = \(songID)")
    }
    
    func song(songID: Int){
        let systemSoundID: SystemSoundID = SystemSoundID(songID)
        AudioServicesPlaySystemSound(systemSoundID)
    }
    
    
}
// 1114, 1117, 1118



