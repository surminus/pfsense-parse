#!/usr/bin/ruby 

require_relative("core.rb")
require 'nokogiri'

file = ARGV[0]

if ARGV.empty?
    abort("No file selected")
end

xmlfeed = Nokogiri::XML(open(file))
xmlfeed.xpath("./pfsense/filter/rule").each do |item|    
  
  print "Description:   #{item.xpath("./descr").text}\n"
  print "Type:          #{item.xpath("./type").text}\n"
  print "Interface:     #{item.xpath("./interface").text}\n"

  if not item.xpath("./source/address").empty?
    print "Source:        #{item.xpath("./source/address").text}\n"
  else
    print "Source:        *\n"
  end

  if not item.xpath("./destination/address").empty?
    print "Destination:   #{item.xpath("./destination/address").text}\n"
  else
    print "Destination:   *\n"
  end

  if not item.xpath("./protocol").empty?
    print "Protocol:      #{item.xpath("./protocol").text}\n"
  else
    print "Protocol:      *\n"
  end

  if not item.xpath("./protocol").text == "icmp"
    print "Port:          #{item.xpath("./destination/port").text}\n\n"
  else
    print "Port:          -\n\n"
  end

end

