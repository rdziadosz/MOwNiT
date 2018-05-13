#!/usr/bin/expect -f
#!usr/bin/expect
package require Expect

for {set i 1} {$i < 5} {incr i} {
    spawn ../a.out
    expect " ENTER:     PROJECT_NAME"
    send "DECK\n"
    expect "SELECT ACTION:"
    send "MESH\n"
    expect "SELECT ACTION:"
    send "ENRICH,GLOBAL,ORDER=$i\n"
    expect "SELECT ACTION:"
    send "END\n"
    expect "SELECT ACTION:"
    send "SOLVE\n"
    expect "SELECT ACTION:"
    send "ERREST\n"
    expect "SELECT ACTION:"
}