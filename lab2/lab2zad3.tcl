#!/usr/bin/expect -f
#!usr/bin/expect
package require Expect

puts "\nINFO: p=1\n"
spawn ../a.out
expect " ENTER:     PROJECT_NAME"
send "DECK\n"
expect "SELECT ACTION:"
send "MESH\n"
expect "SELECT ACTION:"
send "ENRICH,GLOBAL,ORDER=1\n"
expect "SELECT ACTION:"
send "END\n"
expect "SELECT ACTION:"
for {set i 0} {$i < 10} {incr i} {
    send "SOLVE\n"
    expect "SELECT ACTION:"
    send "ERREST\n"
    expect "SELECT ACTION:"
    send "ADAPTP\n"
    expect "SELECT ACTION:"
}