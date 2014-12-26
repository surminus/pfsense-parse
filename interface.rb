#!/usr/bin/ruby 

require_relative("core.rb")
 
# root search
$rootsearch = "./pfsense/interfaces/*"

# Array for name
$a = ["Description ",
      "IP Address  ",
      "Subnet      ",
      "Interface   ",
     ]
  
# Array for searchterm
$b = ["./descr",
      "./ipaddr",
      "./subnet",
      "./if",
     ]

process
