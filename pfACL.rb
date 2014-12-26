#!/usr/bin/ruby 

require 'nokogiri'

file = ARGV[0]

if ARGV.empty?
  abort("No file selected")
end
  
# Array for name
a = ["Description ",
     "Type        ",
     "Interface   ",
     "Source      ",
     "Destination ",
     "Protocol    ",
     "Port        "
    ]
  
# Array for searchterm
b = ["./descr",
     "./type",
     "./interface",
     "./source/address",
     "./destination/address",
     "./protocol",
     "./destination/port"
    ]
  
# Combine arrays
c = a.zip(b)

xmlfeed = Nokogiri::XML(open(file))
xmlfeed.xpath("./pfsense/filter/rule").each do |item|    
  
  c.each do |name, searchterm| 

    if not item.xpath(searchterm).empty?
      print "#{name}:   "          
      print "#{item.xpath(searchterm).text}\n"
    else
      print "#{name}:   "          
      print "*\n"
    end
  
  end
  print "\n"
end
