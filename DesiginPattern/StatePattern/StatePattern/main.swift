//
//  main.swift
//  StatePattern
//
//  Created by jc.kim on 12/3/22.
//

import Foundation

let gumballMachine = GumballMachine(count: 5)

print(gumballMachine)
print(gumballMachine.description)

gumballMachine.insertQuarter()
gumballMachine.turnCrank()

print(gumballMachine.description)

gumballMachine.insertQuarter()
gumballMachine.ejectQuarter()
gumballMachine.turnCrank()

print(gumballMachine.description)

gumballMachine.insertQuarter()
gumballMachine.turnCrank()
gumballMachine.insertQuarter()
gumballMachine.turnCrank()
gumballMachine.ejectQuarter()

print(gumballMachine.description)

gumballMachine.insertQuarter()
gumballMachine.insertQuarter()
gumballMachine.turnCrank()
gumballMachine.insertQuarter()
gumballMachine.turnCrank()
gumballMachine.insertQuarter()
gumballMachine.turnCrank()

print(gumballMachine.description)




