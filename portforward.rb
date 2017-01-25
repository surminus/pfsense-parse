#!/usr/bin/ruby 

require_relative("core")

# root search
$rootsearch = "./pfsense/nat/rule"

# Array for name
$a = ["Description        ",
      "Source Interface   ",
      "Protocol           ",
      "Source Address     ",
      "Destination Address",
      "Destination Ports  ",
      "NAT IP             ",
      "NAT Ports          ",
      "NAT Reflection     ",
    ]
  
# Array for searchterm
$b = ["./descr",
    "./interface",
    "./protocol",
    "./source/address",
    "./destination/network",
    "./destination/port",
    "./target",
    "./local-port",
    "./natreflection",
    ]

process
