#!/usr/bin/ruby 

require_relative 'core'

external = []
internal = []
descript = []

$xmldoc.elements.each("pfsense/nat/onetoone/external") do |ele|
  external << ele.text 
end

$xmldoc.elements.each("pfsense/nat/onetoone/source/address") do |ele|
  internal << ele.text 
end

$xmldoc.elements.each("pfsense/nat/onetoone/descr") do |ele|
  descript << ele.text
end

external.each_with_index do |external, idx|
  print "Name: #{descript[idx]}\n"
  print "External: #{external}\n" 
  print "Internal: #{internal[idx]}\n\n"
end
