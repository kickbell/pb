//
//  HomeTheaterFacade.swift
//  Adapter&PacadePattern
//
//  Created by jc.kim on 11/30/22.
//

import Foundation

class HomeTheaterFacade {
    let popper: Popper
    let lights: Light
    let screen: Screen
    let projector:Projector
    let amp: Amp
    let player: Player
    
    init(_ popper: Popper,
         _ lights: Light,
         _ screen: Screen,
         _ projector: Projector,
         _ amp: Amp,
         _ player: Player) {
        self.popper = popper
        self.lights = lights
        self.screen = screen
        self.projector = projector
        self.amp = amp
        self.player = player
    }
    
    func watchMovie(_ movieName: String) {
        print("\n--- 영화 볼 준비 중 ---")
        popper.on()
        popper.pop()
        lights.dim(10)
        screen.down()
        projector.on()
        projector.wideScreenMode()
        amp.on()
        amp.setSurroundSound()
        amp.setVolume(5)
        player.on()
        player.play(movieName)
    }
    
    func endMovie(_ movieName: String) {
        print("\n--- 홈시어터를 끄는 중 ---")
        popper.off()
        lights.on()
        screen.up()
        projector.off()
        amp.off()
        player.stop(movieName)
        player.off()
    }
}
