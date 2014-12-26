#!/usr/bin/ruby 

require_relative("core.rb")
 
# root search
$rootsearch = "./pfsense/filter/rule"

# Array for name
$a = ["Description ",
     "Type        ",
     "Interface   ",
     "Source      ",
     "Destination ",
     "Protocol    ",
     "Port        "
    ]
  
# Array for searchterm
$b = ["./descr",
     "./type",
     "./interface",
     "./source/address",
     "./destination/address",
     "./protocol",
     "./destination/port"
    ]

process
