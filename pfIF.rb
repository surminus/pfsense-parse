#!/usr/bin/ruby 

require_relative 'core'

interface = []
ipaddress = []
subnet = []
gateway = []
descript = []

$xmldoc.elements.each("pfsense/interfaces/*/descr") do |ele|
  descript << ele.text 
end

$xmldoc.elements.each("pfsense/interfaces/*/ipaddr") do |ele|
  ipaddress << ele.text 
end

$xmldoc.elements.each("pfsense/interfaces/*/subnet") do |ele|
  subnet << ele.text 
end

$xmldoc.elements.each("pfsense/interfaces/*/if") do |ele|
  interface << ele.text 
end

descript.each_with_index do |descript, idx|
  print "Name:        #{descript}\n"
  print "IP Range:    #{ipaddress[idx]}/#{subnet[idx]}\n" 
  print "Interface:   #{interface[idx]}\n\n"
end

