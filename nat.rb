#!/usr/bin/ruby 

require_relative("core")

# root search
$rootsearch = "./pfsense/nat/onetoone"

# Array for name
$a = ["Description ",
    "External    ",
    "Internal    ",
    ]
  
# Array for searchterm
$b = ["./descr",
    "./external",
    "./source/address",
    ]

process
