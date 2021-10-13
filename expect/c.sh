#!/usr/bin/expect -f

set machines {
  "name" "10.10.10.10"
  "name2" "10.10.10.11"
}

set host [lindex $argv 0]

set machine [dict get $machines $host]

spawn ./a

expect {
	"*user@10.10.1.1*" {
		send "goto $machine\r"
	}
}

interact
