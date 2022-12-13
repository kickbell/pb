//
//  Menu.swift
//  Iterator&CompositePattern
//
//  Created by jc.kim on 12/13/22.
//

import Foundation

class Menu: MenuComponent {
    var menus: [MenuComponent] = []
    let name: String
    let description: String
    
    init(_ name: String,_ description: String) {
        self.name = name
        self.description = description
    }
    
    func add(_ menuComponent: MenuComponent) {
        menus.append(menuComponent)
    }
    
    /*
     여기서는 단순히 0번째를 삭제해주고 있지만, 실제로는 다르게 구현해야 한다.
     무슨 말이냐면, menus안에 menuItem도있고 menu도 들어있을 수 있다.
     또 그 menuItem안에 또다른 menuItem이나 menu가 들어있을 수 도 있지.
     애초에 그러려고 쓰는 패턴이니까.
     그러면 저장할 때, 단순히 [MenuComponent]보다는 [Key값:MenuComponent] 같은 식으로
     저장해서 삭제할 때 그 키값으로 해당 값을 찾아온다던지 하는 그런식으로 구현해야 하지 않을까.
     근데 또 그러면 생각해야 하는 점이, tree구조 잖아? 그럼 그 밑에있는 애들이 다 지워질 수 있다는
     말이지. 그러면 그걸 다 날릴건지 아니면 이어줄건지 그런 것도 고려를 해야겠다.
     */
    func remove(_ menuComponent: MenuComponent) {
        menus.remove(at: 0)
    }
    
    func getChild(_ i: Int) -> MenuComponent? {
        menus[i]
    }
    
    func print() {
        Swift.print("\n  \(name), \(description)")
        Swift.print("----------------------------------------")
        
        menus.forEach { menuComponent in
            menuComponent.print()
        }
    }
}
