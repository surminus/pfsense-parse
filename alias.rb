#!/usr/bin/ruby 

require_relative("core")

# root search
$rootsearch = "./pfsense/aliases/alias"

# Array for name
$a = ["Name        ",
      "Type        ",
      "Detail      ",
    ]
  
# Array for searchterm
$b = ["./name",
      "./type",
      "./address",
    ]

process
