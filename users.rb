#!/usr/bin/ruby 

require_relative("core")

# root search
$rootsearch = "./pfsense/system/user"

# Array for name
$a = ["Name     ",
      "Username ",
      "UID      ",
    ]
  
# Array for searchterm
$b = ["./descr",
    "./name",
    "./uid",
    ]

process
